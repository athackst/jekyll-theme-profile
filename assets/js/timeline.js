// Fix timeline anchors
document.addEventListener("DOMContentLoaded", function () {
  console.log("Timeline script is running!");

  function updateTopBarHeight() {
      // Recalculate topBarHeight
      var topBarElement = document.querySelector('.topbar');
      topBarHeight = topBarElement ? topBarElement.offsetHeight : 0;

      // Update styles for each timeline title
      timelineTitles.forEach(function (title) {
          title.style.top = topBarHeight + "px";
      });
  }

  // Default topBarHeight to 0 if .topbar doesn't exist
  var topBarHeight = 0;
  var timelineTitles = document.querySelectorAll(".TimelineItem-title");

  // Initial update
  updateTopBarHeight();

  // Add event listener for window resize
  window.addEventListener('resize', function () {
      // Call the function to update topBarHeight and adjust styles
      console.log("Updated height!");
      updateTopBarHeight();
  });
});
