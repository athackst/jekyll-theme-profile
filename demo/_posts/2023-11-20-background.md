---
title: "Post with custom background"
description: Post with custom styling
background:
  image: https://www.allisonthackston.com/assets/img/cover-1920.jpg
style: sidebar
tags: [style, background]
category: custom
css_style: |
  .Header {
    background-color: rgba(0,0,0,0);
  }
---

# Introducing Custom Backgrounds

I'm excited to introduce a new feature that allows you to set custom background images for your posts. This feature gives you more creative control over the look and feel of your content, making it easier to align your post’s visuals with your message.

## Why Use Custom Backgrounds?

Custom backgrounds can:

- **Enhance visual appeal** – Make your posts stand out with eye-catching imagery.
- **Set the mood** – Use imagery to reflect the tone of your content.
- **Support your brand** – Maintain a consistent visual identity across your posts.

## How It Works

Adding a custom background is easy. Simply include a `background.image` field in your post’s front matter, like this:

```yaml
background:
  image: https://example.com/your-background-image.jpg
```

You can also fine-tune the styling using the `css_style` field, allowing you to adjust the appearance as needed.

## See It in Action

You’re looking at a live example right now! This post uses a custom background image, and we’ve set the header to be transparent with a simple CSS tweak.

Want to dive deeper? Check out the [Custom Background Example Page](../custom-background.md) for more details and additional examples.

## Get Creative!

We can’t wait to see how you use custom backgrounds to personalize your posts. Try it out and let your content shine.
