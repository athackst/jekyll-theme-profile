---
title: "Introducing Custom Header Colors"
description: "Take control of your post headers with custom colors, images, and overlays."
style: sidebar
tags: [style, header]
category: custom
---

# Introducing Custom Header Colors

We’re excited to announce a new feature that allows you to fully customize your post headers with colors, images, and overlays. This gives you the flexibility to create headers that match your content and branding perfectly.

## What Can You Customize?

With the new header settings, you can customize:

- **Background** – Choose **either a solid color**, **an image**, or **an image with an overlay** for the header background.
- **Text color** – Set the color of the title and description text.
- **Accent color** – Control the color of links and other accent elements.

## How to Configure It

You can set these styles in your post’s front matter or site-wide in your `_config.yml` file.

### Custom text

```yaml
header:
  text: "rgba(255,255,255,0.7)"    # Text color
  accent: "#ffffff"                 # Accent color
```

### Custom header color

```yaml
header:
  color: "#4051b5"                 # Solid background color (optional)
```

### Custom header image

```yaml
header:
  image: /media/background-img.jpg  # Background image (optional)
  overlay: rgba(0, 0, 0, 0.5)       # Overlay for background image (optional)
```

### Key Usage Notes:
- You can **specify `color` alone** for a solid color background.
- You can **specify `image` alone** to use an image as the background.
- You can **combine `image` and `overlay`** to apply a transparent overlay on top of the image for better text readability.

## Learn More

See a live demo on the [Custom Header Example Page](../custom-header.md){:.btn}.

For full configuration details, refer to the [Set Custom Header Colors section in the documentation](../_docs/configuration.md#set-custom-header-colors).

## Start Customizing

Sometimes a post just needs a little extra flair at the top. Maybe it’s a splash of your brand color, or a photo that sets the mood before a reader even starts. Now you can do that—no fuss, just set the color or drop in an image. We’ve already had fun playing with it; hope you do too.
