// Fix timeline anchors
document.addEventListener("DOMContentLoaded", function() {
    console.log("Script is running!");
    // Default topBarHeight to 0 if .topbar doesn't exist
    var topBarElement = document.querySelector('.topbar');
    var topBarHeight = topBarElement ? topBarElement.offsetHeight : 0;
    var timelineTitles = document.querySelectorAll(".TimelineItem-title");

    timelineTitles.forEach(function(title) {
      title.style.top = topBarHeight + "px";
    });
  });
