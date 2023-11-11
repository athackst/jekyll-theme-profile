document.addEventListener('DOMContentLoaded', function () {
    var themeToggle = document.getElementById('theme-toggle');
    var themeIcon = document.getElementById('theme-icon');
    var htmlElement = document.getElementsByTagName('html')[0];

    function getCurrentMode() {
        return htmlElement.getAttribute('data-color-mode');
    }

    function getModeFromCookie() {
        var cookieValue = getCookie('colorMode');
        if (cookieValue !== null && (cookieValue === 'auto' || cookieValue === 'dark' || cookieValue === 'light')) {
            return cookieValue;
        } else {
            // Default to 'auto' mode if the cookie is not set or has an invalid value
            return 'auto';
        }
    }

    function setCookie(name, value, days) {
        var expires = "";
        if (days) {
            var date = new Date();
            date.setTime(date.getTime() + (days * 24 * 60 * 60 * 1000));
            expires = "; expires=" + date.toUTCString();
        }
        document.cookie = name + "=" + (value || "") + expires + "; path=/";
    }

    function getCookie(name) {
        var nameEQ = name + "=";
        var ca = document.cookie.split(';');
        for (var i = 0; i < ca.length; i++) {
            var c = ca[i];
            while (c.charAt(0) === ' ') c = c.substring(1, c.length);
            if (c.indexOf(nameEQ) === 0) return c.substring(nameEQ.length, c.length);
        }
        return null;
    }

    function getNextMode() {
        var currentMode = getCurrentMode();
        var nextMode;
        if (currentMode === 'auto') {
            nextMode = 'dark';
        } else if (currentMode === 'dark') {
            nextMode = 'light'
        } else {
            nextMode = 'auto'
        }
        return nextMode;
    }

    function updateTheme(nextMode) {
        htmlElement.setAttribute('data-color-mode', nextMode);
        updateThemeIcon(nextMode);
        setCookie('colorMode', nextMode, 365); // Save the preference for 365 days
    }

    function updateThemeIcon(nextMode) {
        if (nextMode === 'dark') {
            nextIcon = 'moon';
        } else if (nextMode === 'light') {
            nextIcon = 'sun'
        } else {
            nextIcon = 'zap';
        }
        // Set the span to the themeIcon class
        themeIcon.classList = "octicon octicon-" + nextIcon + "-24";
        themeToggle.setAttribute("aria-label", "Color mode: " + nextMode);
    }

    themeToggle.addEventListener('click', function () {
        updateTheme(getNextMode());
        // updateThemeIcon(getNextMode());
    });

    // Initialize the theme icon based on the initial state
    // updateThemeIcon(getModeFromCookie());
    updateTheme(getModeFromCookie());
});
