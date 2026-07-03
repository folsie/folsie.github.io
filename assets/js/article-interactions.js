(function () {
  function slugify(text) {
    return text
      .toLowerCase()
      .trim()
      .replace(/[\s\W-]+/g, "-")
      .replace(/^-+|-+$/g, "");
  }

  function ensureHeadingIds(headings) {
    var usedIds = new Set();

    headings.forEach(function (heading, index) {
      if (heading.id) {
        usedIds.add(heading.id);
        return;
      }

      var baseId = slugify(heading.textContent || "") || "section-" + (index + 1);
      var nextId = baseId;
      var suffix = 2;

      while (usedIds.has(nextId) || document.getElementById(nextId)) {
        nextId = baseId + "-" + suffix;
        suffix += 1;
      }

      heading.id = nextId;
      usedIds.add(nextId);
    });
  }

  function buildToc(headings) {
    var list = document.createElement("ol");
    list.className = "article-toc__list";
    var currentSubList = null;
    var currentTopItem = null;

    headings.forEach(function (heading) {
      var item = document.createElement("li");
      item.className = "article-toc__item article-toc__item--" + heading.tagName.toLowerCase();

      var link = document.createElement("a");
      link.className = "article-toc__link";
      link.href = "#" + heading.id;
      link.textContent = heading.textContent.trim();
      link.setAttribute("data-heading-id", heading.id);
      item.appendChild(link);

      if (heading.tagName === "H2") {
        list.appendChild(item);
        currentTopItem = item;
        currentSubList = null;
        return;
      }

      if (!currentTopItem) {
        list.appendChild(item);
        return;
      }

      if (!currentSubList) {
        currentSubList = document.createElement("ol");
        currentSubList.className = "article-toc__sublist";
        currentTopItem.appendChild(currentSubList);
      }

      currentSubList.appendChild(item);
    });

    return list;
  }

  function initToc(articleRoot, content) {
    var tocPanel = articleRoot.querySelector("[data-article-toc-panel]");
    var tocNav = articleRoot.querySelector("[data-article-toc]");
    var closeButton = articleRoot.querySelector("[data-toc-close]");
    var reopenButton = articleRoot.parentElement.querySelector("[data-toc-reopen]");
    var sidebar = articleRoot.querySelector("[data-article-sidebar]");
    var headings = Array.prototype.slice.call(content.querySelectorAll("h2, h3")).filter(function (heading) {
      return heading.textContent.trim();
    });

    if (!tocPanel || !tocNav || !sidebar || !headings.length) {
      if (sidebar) {
        sidebar.hidden = true;
      }
      if (reopenButton) {
        reopenButton.hidden = true;
      }
      articleRoot.classList.remove("article-layout--blog");
      return;
    }

    ensureHeadingIds(headings);
    tocNav.appendChild(buildToc(headings));

    var links = Array.prototype.slice.call(tocNav.querySelectorAll(".article-toc__link"));

    function setActiveHeading(id) {
      links.forEach(function (link) {
        var isActive = link.getAttribute("data-heading-id") === id;
        link.classList.toggle("is-active", isActive);
        if (isActive) {
          link.setAttribute("aria-current", "true");
        } else {
          link.removeAttribute("aria-current");
        }
      });
    }

    if ("IntersectionObserver" in window) {
      var observer = new IntersectionObserver(
        function (entries) {
          var visibleEntries = entries
            .filter(function (entry) {
              return entry.isIntersecting;
            })
            .sort(function (a, b) {
              return a.boundingClientRect.top - b.boundingClientRect.top;
            });

          if (visibleEntries.length) {
            setActiveHeading(visibleEntries[0].target.id);
          }
        },
        {
          rootMargin: "-90px 0px -65% 0px",
          threshold: [0, 1]
        }
      );

      headings.forEach(function (heading) {
        observer.observe(heading);
      });
    } else {
      var updateActiveHeading = function () {
        var activeId = headings[0].id;

        headings.forEach(function (heading) {
          if (heading.getBoundingClientRect().top <= 120) {
            activeId = heading.id;
          }
        });

        setActiveHeading(activeId);
      };

      updateActiveHeading();
      window.addEventListener("scroll", updateActiveHeading, { passive: true });
    }

    function openPanel() {
      sidebar.hidden = false;
      tocPanel.hidden = false;
      document.body.classList.remove("body--toc-closed");
      if (reopenButton) {
        reopenButton.hidden = true;
      }
    }

    function closePanel() {
      sidebar.hidden = true;
      tocPanel.hidden = true;
      document.body.classList.add("body--toc-closed");
      if (reopenButton) {
        reopenButton.hidden = false;
      }
    }

    setActiveHeading(headings[0].id);

    closeButton.addEventListener("click", closePanel);

    if (reopenButton) {
      reopenButton.addEventListener("click", openPanel);
    }
  }

  function shouldSkipImage(image) {
    if (!image.src) {
      return true;
    }

    var link = image.closest("a");
    if (!link) {
      return false;
    }

    return link.classList.contains("button-link") || link.classList.contains("insurance-module-card");
  }

  function initLightbox(articleRoot, content) {
    var lightbox = articleRoot.parentElement.querySelector("[data-image-lightbox]");
    var lightboxImage = lightbox && lightbox.querySelector("[data-lightbox-image]");
    var closeButton = lightbox && lightbox.querySelector("[data-lightbox-close]");
    var backdrop = lightbox && lightbox.querySelector("[data-lightbox-backdrop]");
    var images = Array.prototype.slice.call(content.querySelectorAll("img")).filter(function (image) {
      return !shouldSkipImage(image);
    });

    if (!lightbox || !lightboxImage || !closeButton || !backdrop || !images.length) {
      return;
    }

    var previousScrollY = 0;

    function closeLightbox() {
      if (lightbox.hidden) {
        return;
      }

      lightbox.hidden = true;
      lightboxImage.src = "";
      lightboxImage.alt = "";
      document.body.classList.remove("body--lightbox-open");
      document.body.style.top = "";
      window.scrollTo(0, previousScrollY);
    }

    function openLightbox(image) {
      previousScrollY = window.scrollY || window.pageYOffset;
      lightboxImage.src = image.currentSrc || image.src;
      lightboxImage.alt = image.alt || "";
      lightbox.hidden = false;
      document.body.classList.add("body--lightbox-open");
      document.body.style.top = "-" + previousScrollY + "px";
    }

    images.forEach(function (image) {
      image.classList.add("article-image-zoomable");
      image.setAttribute("tabindex", "0");
      image.setAttribute("role", "button");
      image.setAttribute("aria-label", "\u70b9\u51fb\u653e\u5927\u56fe\u7247");

      image.addEventListener("click", function () {
        openLightbox(image);
      });

      image.addEventListener("keydown", function (event) {
        if (event.key === "Enter" || event.key === " ") {
          event.preventDefault();
          openLightbox(image);
        }
      });
    });

    closeButton.addEventListener("click", closeLightbox);
    backdrop.addEventListener("click", closeLightbox);
    lightbox.addEventListener("click", function (event) {
      if (event.target === lightbox) {
        closeLightbox();
      }
    });

    document.addEventListener("keydown", function (event) {
      if (event.key === "Escape") {
        closeLightbox();
      }
    });
  }

  function initStars() {
    if (window.matchMedia("(prefers-reduced-motion: reduce)").matches) {
      return;
    }

    if (window.matchMedia("(pointer: coarse)").matches) {
      return;
    }

    var layer = document.createElement("div");
    layer.className = "article-sparkle-layer";
    document.body.appendChild(layer);
    var starCount = 8;
    var centerX = window.innerWidth / 2;
    var centerY = window.innerHeight / 2;
    var targetX = centerX;
    var targetY = centerY;
    var visible = false;
    var stars = [];
    var orbitOffsets = [0, 0.78, 1.57, 2.35, 3.14, 3.92, 4.71, 5.49];

    for (var index = 0; index < starCount; index += 1) {
      var star = document.createElement("span");
      star.className = "article-sparkle article-sparkle--orbit";
      star.style.setProperty("--orbit-scale", (0.8 + (index % 3) * 0.12).toFixed(2));
      layer.appendChild(star);
      stars.push(star);
    }

    function setVisible(nextVisible) {
      visible = nextVisible;
      layer.classList.toggle("is-visible", nextVisible);
    }

    function updateTarget(clientX, clientY) {
      targetX = clientX;
      targetY = clientY;
      if (!visible) {
        centerX = clientX;
        centerY = clientY;
      }
      setVisible(true);
    }

    function tick(time) {
      centerX += (targetX - centerX) * 0.18;
      centerY += (targetY - centerY) * 0.18;

      for (var index = 0; index < stars.length; index += 1) {
        var angle = time * 0.0018 + orbitOffsets[index];
        var radiusX = 18 + (index % 2) * 8;
        var radiusY = 12 + (index % 3) * 6;
        var x = centerX + Math.cos(angle) * radiusX;
        var y = centerY + Math.sin(angle * 1.15) * radiusY;
        var rotation = angle * 90;
        stars[index].style.transform = "translate3d(" + x.toFixed(1) + "px," + y.toFixed(1) + "px,0) rotate(" + rotation.toFixed(1) + "deg) scale(var(--orbit-scale))";
      }

      window.requestAnimationFrame(tick);
    }

    document.addEventListener("pointermove", function (event) {
      updateTarget(event.clientX, event.clientY);
    }, { passive: true });

    document.addEventListener("pointerleave", function () {
      setVisible(false);
    });

    window.addEventListener("blur", function () {
      setVisible(false);
    });

    window.addEventListener("resize", function () {
      if (!visible) {
        centerX = window.innerWidth / 2;
        centerY = window.innerHeight / 2;
        targetX = centerX;
        targetY = centerY;
      }
    });

    window.requestAnimationFrame(tick);
  }

  function initVisitCount(articleRoot) {
    var counter = articleRoot.querySelector("[data-article-views]");
    var code = articleRoot.getAttribute("data-goatcounter-code");

    if (!counter || !code || !("fetch" in window)) {
      return;
    }

    var cleanCode = code.replace(/[^a-z0-9-]/gi, "");
    if (!cleanCode) {
      return;
    }

    function setUnavailable() {
      counter.classList.remove("is-loading");
      counter.classList.add("is-unavailable");
      counter.textContent = "\u2014";
    }

    function setCount(value) {
      counter.classList.remove("is-loading", "is-unavailable");
      counter.textContent = value || "\u2014";
    }

    function fetchCount(path) {
      var pagePath = path || window.location.pathname || "/";
      var url = "https://" + cleanCode + ".goatcounter.com/counter/" + encodeURIComponent(pagePath) + ".json";

      fetch(url)
        .then(function (response) {
          if (!response.ok) {
            throw new Error("GoatCounter response was not ok");
          }
          return response.json();
        })
        .then(function (data) {
          setCount(data && data.count);
        })
        .catch(setUnavailable);
    }

    var attempts = 0;
    var maxAttempts = 40;

    function waitForGoatCounter() {
      attempts += 1;

      if (window.goatcounter && typeof window.goatcounter.get_data === "function") {
        fetchCount(window.goatcounter.get_data()["p"]);
        return;
      }

      if (attempts >= maxAttempts) {
        fetchCount(window.location.pathname);
        return;
      }

      window.setTimeout(waitForGoatCounter, 100);
    }

    waitForGoatCounter();
  }

  document.addEventListener("DOMContentLoaded", function () {
    var articleRoot = document.querySelector("[data-blog-article]");
    if (!articleRoot) {
      return;
    }

    var content = articleRoot.querySelector("[data-article-content]");
    if (!content) {
      return;
    }

    initToc(articleRoot, content);
    initLightbox(articleRoot, content);
    initStars();
    initVisitCount(articleRoot);
  });
})();
