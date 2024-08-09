---
title: Docs Layout
category: layouts
order: 3
---

The Docs layout is ideal for documentation pages and follows the document style on [GitHub Docs](https://docs.github.com).

## Usage

To use the Docs layout in your Jekyll site, create a new file in your `_docs` collection with the following front matter:

```yaml
---
title: Your Documentation Title
layout: docs
---
```

## Configuration

Add the following to your `_config.yml`:

```yaml
collections:
  docs:
    output: true
    sort_by: order
defaults:
  - scope:
      path: "" # an empty string here means all files in the project
      type: "docs"
    values:
      layout: "docs"
      image: /assets/img/default.png # The default image used for social and posts.
      permalink: /docs/:path
      toc: true
```

## Features

- Automatically generates a table of contents (`toc: true`)
- Uses a default image for social sharing
- Sorts documentation pages by the `order` front matter

## Demo

[Live demo](index.html){:.btn}

## Notes

- Ensure your documentation files are placed in the `_docs` folder
- Use the `order` front matter to control the sorting of your documentation pages
- The `toc` option automatically generates a table of contents for each page
