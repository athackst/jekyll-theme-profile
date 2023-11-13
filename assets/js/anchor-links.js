// Fix anchor links
document.addEventListener('DOMContentLoaded', function () {
    // Function to handle anchor link click
    function handleAnchorLinkClick(e) {
        // Prevent the default behavior of the link (e.g., jumping to the anchor)
        e.preventDefault();

        // Get the target section's ID from the href attribute
        var targetId = this.getAttribute('href').substring(1);

        // Get the target section by ID
        var targetSection = document.getElementById(targetId);

        // If the target section exists, calculate the offset based on the top bar's height
        if (targetSection) {
            var topBarHeight = document.querySelector('.topbar').offsetHeight;
            var offsetTop = targetSection.offsetTop - topBarHeight;

            // Scroll to the target section with the calculated offset
            window.scrollTo({
                top: offsetTop,
                behavior: 'smooth' // Optional: Add smooth scrolling effect
            });
        }
    }

    // Function to recalculate topBarHeight on window resize
    function handleWindowResize() {
        topBarHeight = document.querySelector('.topbar').offsetHeight;
    }

    // Get all anchor links on the page
    var anchorLinks = document.querySelectorAll('a[href^="#"]');

    // Loop through each anchor link
    anchorLinks.forEach(function (link) {
        // Attach a click event listener to each anchor link
        link.addEventListener('click', handleAnchorLinkClick);
    });

    // Add event listener for window resize, debounced for efficiency
    var resizeTimer;
    window.addEventListener('resize', function () {
        clearTimeout(resizeTimer);
        resizeTimer = setTimeout(handleWindowResize, 250);
    });
});
