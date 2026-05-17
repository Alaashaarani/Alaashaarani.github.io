(function() {
  "use strict";

  var currentPage = window.location.pathname.split("/").pop() || "index.html";
  var navLinks = document.querySelectorAll("#mainNav .nav-link");

  navLinks.forEach(function(link) {
    var href = link.getAttribute("href");
    if (!href) {
      return;
    }

    if (href.charAt(0) === "#") {
      if (currentPage !== "index.html") {
        link.classList.add("active");
      }
      return;
    }

    var hrefPage = href.split("#")[0] || currentPage;
    if (hrefPage === currentPage) {
      link.classList.add("active");
    }
  });

  var year = new Date().getFullYear();
  document.querySelectorAll("[data-current-year]").forEach(function(node) {
    node.textContent = year;
  });

  var filterButtons = document.querySelectorAll("[data-filter]");
  var portfolioItems = document.querySelectorAll("#portfolio .portfolio-item[data-category]");

  filterButtons.forEach(function(button) {
    button.addEventListener("click", function() {
      var filter = button.getAttribute("data-filter");

      filterButtons.forEach(function(item) {
        item.classList.remove("active");
      });
      button.classList.add("active");

      portfolioItems.forEach(function(item) {
        var categories = item.getAttribute("data-category") || "";
        var isVisible = filter === "all" || categories.indexOf(filter) !== -1;
        item.classList.toggle("is-hidden", !isVisible);
      });
    });
  });
})();
