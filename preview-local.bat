@echo off
setlocal

set "PREVIEW_DIR=%TEMP%\cldmt-jekyll-preview"

echo Cleaning old preview output...
if exist "%PREVIEW_DIR%" (
  rmdir /s /q "%PREVIEW_DIR%"
)

echo Starting CLDMT local preview...
echo URL: http://127.0.0.1:4000
echo Press Ctrl+C in this window to stop and clean the temporary output.

netstat -ano | findstr /R /C:":4000 .*LISTENING" >nul
if not errorlevel 1 (
  echo.
  echo Port 4000 is already in use. Stop the other local server and run this script again.
  exit /b 1
)

call jekyll build --destination "%PREVIEW_DIR%" --disable-disk-cache
if errorlevel 1 (
  echo.
  echo Jekyll build failed. Cleaning preview output...
  if exist "%PREVIEW_DIR%" (
    rmdir /s /q "%PREVIEW_DIR%"
  )
  exit /b 1
)

start "" "http://127.0.0.1:4000"
echo Serving preview from "%PREVIEW_DIR%"...
call ruby -run -e httpd -- "%PREVIEW_DIR%" -p 4000

echo.
echo Cleaning preview output...
if exist "%PREVIEW_DIR%" (
  rmdir /s /q "%PREVIEW_DIR%"
)

endlocal
