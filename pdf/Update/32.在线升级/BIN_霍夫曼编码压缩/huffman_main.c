#include "segger_rtt.h"
#include "spi_driver_sd.h"
#include "ff.h"
#include "elf2.h"
#include "gpio.h" 
#include "platform.h"
#include "syscon.h"
 



FATFS fs;         /* Work area (file system object) for logical drive */
FIL fsrc, fdst;      /* file objects */
FRESULT res; 
UINT br,bw;
 

uint8_t buffer[2];   /* file copy buffer */

//ELF2 MCU PIN LIST, High GPIO
#define SS_CS       gpio1_11         
#define SS_PRGN     gpio1_12         
#define SS_SCLK     gpio1_13         
#define SS_DATA     gpio1_14                                            
#define SS_INIT     gpio1_15         

#define SS_PRGN_H   HAL_GPIO_WritePin(SS_PRGN,1)  
#define SS_PRGN_L   HAL_GPIO_WritePin(SS_PRGN,0)  
 
#define SS_DATA_H   HAL_GPIO_WritePin(SS_DATA,1)  
#define SS_DATA_L   HAL_GPIO_WritePin(SS_DATA,0) 

#define SS_SCLK_H   HAL_GPIO_WritePin(SS_SCLK,1)  
#define SS_SCLK_L   HAL_GPIO_WritePin(SS_SCLK,0) 

//GPIO Set Function 
void SlaveSerialGpio_Init(void)
{
    GPIO_InitTypeDef ss_group;   //programn sclk sdin ,output   
    ss_group.dir = gpio_Output ;
    ss_group.debounce = gpio_Deb;
    ss_group.value = gpio_High;   

    GPIO_InitTypeDef init_group; //init, input  
    init_group.dir = gpio_Input;
    init_group.debounce = gpio_Deb;
     
    HAL_GPIO_Init(SS_PRGN,ss_group);    
    HAL_GPIO_Init(SS_SCLK,ss_group);    
    HAL_GPIO_Init(SS_DATA,ss_group);    
    
    HAL_GPIO_Init(gpio1_15,init_group);  
    
    SS_PRGN_H;//Set programn = 1              
}

void dlys(int i)
{
  int j;
    uint16_t cnt;
    for(j=i; j>0; j--)
    {
    for(cnt=10000; cnt>0; cnt--);
  }
}

void SendCfg_Data(uint8_t SendData)
{
    uint8_t cnt;
    for (cnt=0; cnt<8; cnt++)//MSB 
    {
        SS_SCLK_L;
        if(SendData & 0x80)
            SS_DATA_H ;
        else 
            SS_DATA_L ; 
            
        SendData <<=1;  
        
        SS_SCLK_H;
    }   
    SS_DATA_L;          
}

/*************************************************************************
* Types used for Huffman coding
*************************************************************************/

typedef struct {
    unsigned char *BytePtr;
    unsigned int  BitPos;
} huff_bitstream_t;

typedef struct huff_decodenode_struct huff_decodenode_t;

struct huff_decodenode_struct {
    huff_decodenode_t *ChildA, *ChildB;
    int Symbol;
};

unsigned char compressed_data_buf[800000];
unsigned char file_out_data_buf[800000];

/*************************************************************************
* Constants for Huffman decoding
*************************************************************************/

/* The maximum number of nodes in the Huffman tree is 2^(8+1)-1 = 511 */
#define MAX_TREE_NODES 511


/*************************************************************************
*                           INTERNAL FUNCTIONS                           *
*************************************************************************/

/*************************************************************************
* _Huffman_InitBitstream() - Initialize a bitstream.
*************************************************************************/
static void _Huffman_InitBitstream( huff_bitstream_t *stream,
    unsigned char *buf )
{
  stream->BytePtr  = buf;
  stream->BitPos   = 0;
}

/*************************************************************************
* _Huffman_ReadBit() - Read one bit from a bitstream.
*************************************************************************/
static unsigned int _Huffman_ReadBit( huff_bitstream_t *stream )
{
  unsigned int  x, bit;
  unsigned char *buf;

  /* Get current stream state */
  buf = stream->BytePtr;
  bit = stream->BitPos;

  /* Extract bit */
  x = (*buf & (1<<(7-bit))) ? 1 : 0;
  bit = (bit+1) & 7;
  if( !bit )
  {
    ++ buf;
  }

  /* Store new stream state */
  stream->BitPos = bit;
  stream->BytePtr = buf;

  return x;
}

/*************************************************************************
* _Huffman_Read8Bits() - Read eight bits from a bitstream.
*************************************************************************/
static unsigned int _Huffman_Read8Bits( huff_bitstream_t *stream )
{
  unsigned int  x, bit;
  unsigned char *buf;

  /* Get current stream state */
  buf = stream->BytePtr;
  bit = stream->BitPos;

  /* Extract byte */
  x = (*buf << bit) | (buf[1] >> (8-bit));
  ++ buf;

  /* Store new stream state */
  stream->BytePtr = buf;

  return x;
}

/*************************************************************************
* _Huffman_RecoverTree() - Recover a Huffman tree from a bitstream.
*************************************************************************/
static huff_decodenode_t * _Huffman_RecoverTree( huff_decodenode_t *nodes,
  huff_bitstream_t *stream, unsigned int *nodenum )
{
  huff_decodenode_t * this_node;

  /* Pick a node from the node array */
  this_node = &nodes[*nodenum];
  *nodenum = *nodenum + 1;

  /* Clear the node */
  this_node->Symbol = -1;
  this_node->ChildA = (huff_decodenode_t *) 0;
  this_node->ChildB = (huff_decodenode_t *) 0;

  /* Is this a leaf node? */
  if( _Huffman_ReadBit( stream ) )
  {
    /* Get symbol from tree description and store in lead node */
    this_node->Symbol = _Huffman_Read8Bits( stream );

    return this_node;
  }

  /* Get branch A */
  this_node->ChildA = _Huffman_RecoverTree( nodes, stream, nodenum );

  /* Get branch B */
  this_node->ChildB = _Huffman_RecoverTree( nodes, stream, nodenum );

  return this_node;
}


///*************************************************************************
//*                            PUBLIC FUNCTIONS                            *
//*************************************************************************/

/*************************************************************************
* Huffman_Uncompress() - Uncompress a block of data using a Huffman
* decoder.
*  in      - Input (compressed) buffer.
*  out     - Output (uncompressed) buffer. This buffer must be large
*            enough to hold the uncompressed data.
*  insize  - Number of input bytes.
*  outsize - Number of output bytes.
*************************************************************************/
//out可以定义一个空指针，同时后面关于out、buf的处理语句都可以注释掉
void Huffman_Uncompress( unsigned char *in, unsigned char *out, unsigned int insize, unsigned int outsize )
{
  huff_decodenode_t nodes[MAX_TREE_NODES], *root, *node;
  huff_bitstream_t  stream;
  unsigned int      k, node_count;
  unsigned char     *buf;
  unsigned char     uncompress_byte;

  /* Do we have anything to decompress? */
  if( insize < 1 ) return;

  /* Initialize bitstream */
  _Huffman_InitBitstream( &stream, in );

  /* Recover Huffman tree */
  node_count = 0;
  root = _Huffman_RecoverTree( nodes, &stream, &node_count );

  /* Decode input stream */
  buf = out;                                 //此条语句可以注释掉
  for( k = 0; k < outsize; ++ k )
  {
    /* Traverse tree until we find a matching leaf node */
    node = root;
    while( node->Symbol < 0 )
    {
      /* Get next node */
      if( _Huffman_ReadBit( &stream ) )
        node = node->ChildB;
      else
        node = node->ChildA;
    }

    /* We found the matching leaf node and have the symbol */
  //解压过程，将依次得到原始文件的每个字节，存在uncompress_byte变量里，可以在这里移位送给FPGA，完成加载。
  uncompress_byte = (unsigned char) node->Symbol;
    *buf ++ = uncompress_byte;               //此条语句可以注释掉
  }
}



int main() 
{  
    uint8_t BuffCnt;
    uint32_t BuffRead[16];  
    long BuffRead_Cnt,file_in_cur;
    int file_in_data_length,i;   
    SlaveSerialGpio_Init();//串行配置GPIO初始化
 
    printf("\r\n*Read File1410 ~~~~~~~~~*\n\r");
 
    int file_idx;
    int cnt = 0;
    uint8_t    read_value;
    uint32_t   read_cnt  ;
    
 
    res = f_mount(0,&fs);//挂载文件系统
    if(res != FR_OK){
        printf("mount filesystem 0 failed : %d\n\r",res);
    }
    else
    {
        printf("mount filesystem succeed\n\r");
    }      

    //打开待配置的bin文件
    res = f_open(&fsrc, "0:/proj.huf", FA_OPEN_EXISTING | FA_READ);    
    if(res != FR_OK){
        printf("open file error : %d\n\r",res);
    }
    else
    {
        printf("open file succeed\n\r");
    }        
 
    file_in_cur =0;
    while(!f_eof(&fsrc))  //读字节,直到读完为止
    {
      // Res = f_read(&fsrc, BuffRead, 16, &BuffRead_Cnt);
      res = f_read(&fsrc, BuffRead, 1, &BuffRead_Cnt);

      compressed_data_buf[file_in_cur] = BuffRead[0];

      file_in_cur++;
    }
    f_close(&fsrc);

    file_in_data_length = file_in_cur;
   
 
 
    SS_PRGN_H;//Program拉高
    dlys(10);// //us级别的延时,平台不一样,延时可能不同,用户可自行更改

    SS_PRGN_L;//Program拉高
    dlys(10);// //us级别的延时,平台不一样,延时可能不同,用户可自行更改

    SS_PRGN_H;//Program拉高
    dlys(60);// //us级别的延时,平台不一样,延时可能不同,用户可自行更改     
  
    //判断init 信号是否置高，即FPGA初始化完成
    while(1)
    {
      if(HAL_GPIO_ReadPin(gpio1_15))
          break;  
    }

    memcpy(&file_in_data_length, &compressed_data_buf[0], sizeof(int));
    Huffman_Uncompress(compressed_data_buf+sizeof(int), file_out_data_buf, 1, file_in_data_length-1);
 
   
    for (i=0;i<file_in_data_length-1;i++)
    { 
        for (cnt=0; cnt<8; cnt++)//MSB
        {
            SS_SCLK_L;
            if( file_out_data_buf[i] & 0x80)
                SS_DATA_H;
            else
                SS_DATA_L;
            
            file_out_data_buf[i] <<=1;
            
            SS_SCLK_H;
        }
    } 
 
    f_close(&fsrc); //关闭
}
 