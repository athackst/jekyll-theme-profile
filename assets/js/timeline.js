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
        console.log("Updated offsetHeight!");
    }

    // Set dimensions for all iframes with the same ID
    function setIframeDimensions() {
        var iframes = document.querySelectorAll('iframe[id="Timeline-video"]');
        console.log(iframes.length);
        var container = document.getElementById('Timeline-video-container');

        // Get the container's dimensions
        var containerWidth = container.offsetWidth;
        var containerHeight = container.offsetHeight;
        if (iframes) {
            iframes.forEach(function (iframe) {
                iframe.style.width = containerWidth + 'px';
                iframe.style.height = containerHeight + 'px';
            });
            console.log("Updated iframes width x height: " + containerWidth + " x " + containerHeight);
        }
    }

    // Default topBarHeight to 0 if .topbar doesn't exist
    var topBarHeight = 0;
    var timelineTitles = document.querySelectorAll(".TimelineItem-title");

    // Initial update
    updateTopBarHeight();
    setIframeDimensions();

    // Add event listener for window resize
    window.addEventListener('resize', function () {
        // Call the function to update topBarHeight and adjust styles
        console.log("resizing elements");
        updateTopBarHeight();
        setIframeDimensions();
    });
});
