---
title: Linktree Layout
category: layouts
order: 3
---

The Linktree layout is a versatile template for creating a page that displays a collection of important links, similar to the popular Linktree service. This layout is highly customizable and can be used to create both simple and complex link pages.

## Usage

To use the Linktree layout in your Jekyll site, create a new file with the following front matter:

```yaml
---
layout: linktree
---
```

## Parameters

The Linktree layout accepts several parameters in the front matter:

| Parameter | Default | Description |
|-----------|---------|-------------|
| `layout` | Required | Must be set to `linktree` |
| `links` | `[]` | An array of link objects to display |
| `background_image` | None | URL of a background image for the page |
| `title` | None | Title to display at the top of the page |
| `css_style` | None | Custom CSS to apply to the page |

Each link object in the `links` array can have the following properties:

| Property | Description |
|----------|-------------|
| `name` | The text to display for the link |
| `url` | The URL the link should point to |
| `thumbnail` | URL of an image to use as the link's icon (optional) |
| `octicon` | Name of an Octicon to use as the link's icon (optional) |

## Functionality

1. The layout creates a responsive grid of link cards.
2. Each link is displayed as a card with an optional thumbnail or icon.
3. The layout includes a theme toggle button for light/dark mode.
4. If specified, it displays a title and applies custom CSS.

## Usage

This example shows a basic Linktree page with various links:

```yaml
---
layout: linktree
links:
  - name: My website
    url: https://www.allisonthackston.com
    thumbnail: https://avatars.githubusercontent.com/u/6098197?v=4
  - name: Github Dashboard
    url: https://dashboard.althack.dev
    thumbnail: https://github.com/athackst/dashboard/raw/main/assets/dashboard.png
  - name: Github Profile
    url: https://github.com/athackst
    octicon: mark-github
  - name: Dockerhub
    url: https://hub.docker.com/u/althack
    thumbnail: https://img.icons8.com/?size=100&id=cdYUlRaag9G9&format=png&color=000000
  - name: VSCode Extensions
    url: https://marketplace.visualstudio.com/publishers/althack
    thumbnail: https://img.icons8.com/?size=100&id=0OQR1FYCuA9f&format=png&color=000000
  - name: Ruby Gems
    url: https://rubygems.org/profiles/althack
    octicon: ruby
  - name: Python packages
    url: https://pypi.org/user/athackst/
    thumbnail: https://pypi.org/static/images/logo-small.8998e9d1.svg
---
```

[Live demo](../linktree.md){:.btn}

## Customization

1. **Background Image**: Add a `background_image` parameter to set a custom background.
2. **Custom CSS**: Use the `css_style` parameter to add custom CSS directly in the front matter.
3. **Link Icons**: Use either `thumbnail` for custom images or `octicon` for GitHub's Octicons.
4. **Layout Variations**: The layout supports different styles like topbar, appbar, sidebar, and stacked. Use the appropriate URL to see these variations.

The following example demonstrates how to customize the Linktree layout with a background image and custom CSS:

```yaml
---
layout: linktree
background_image: https://www.allisonthackston.com/assets/img/cover-1920.jpg
title: Linktree
css_style: |
    .Link-btn {
        background: rgba(0.1, 0.1, 0.1, 0.4);
        color: #FFFF;
    }
    h1 {
        color: #FFFF;
    }
    .octicon {
        fill: black;
    }
    a {
        color: #FFFF;
    }
    a:hover {
        text-decoration: none;
        color: var(--color-fg-default);
    }
links:
  - name: Example page with topbar
    url: /page/topbar
    thumbnail: /media/topbar-icon.png
  - name: Example page with appbar
    url: /page/appbar
    thumbnail: /media/appbar-icon.png
  - name: Example page with sidebar
    url: /page/sidebar
    thumbnail: /media/sidebar-icon.png
  - name: Example page with header stacked
    url: /page/stacked
    thumbnail: /media/stacked-icon.png
  - name: Example custom background
    url: /background
    thumbnail: /media/icon-bg.png
  - name: Example Linktree page
    url: /linktree
    thumbnail: /media/links.png
  - name: Example Profile page
    url: /profile
    thumbnail: /media/user-image.jpg
  - name: Example Reposotiries page
    url: /repositories
    thumbnail: /media/repositories.png
---
```

[Live demo](../linktree-custom.md){:.btn}

## Notes

- Ensure all image URLs are correct and accessible.
- The `octicon` property requires the Octicons library to be included in your theme.
- Custom CSS can override the theme's default styles, so use it carefully.
- The layout is responsive and should work well on various screen sizes.

## Dependencies

This layout may depend on:

1. The `link-card.html` include for rendering individual links.
2. The `toggle.html` include for the theme toggle functionality.
3. Octicons for icon display.

Ensure these dependencies are properly set up in your Jekyll theme for the Linktree layout to function correctly.
