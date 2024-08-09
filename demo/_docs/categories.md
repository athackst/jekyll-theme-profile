---
title: Categories Layout
category: layouts
order: 3
---

The Categories layout provides an index view of all your categories.

## Usage

To use the Categories layout, create a new file (e.g., `categories.md`) with the following front matter:

```yaml
---
title: Category
layout: category_index
---
```

## Configuration

Add the following to your `_config.yml`:

```yaml
# jekyll-category-pages settings
category_path: category
category_layout: category_layout.html
```

## Features

- Displays an index of all categories used in your site
- Generates individual pages for each category

## Demo

[Live demo](../category/index.html){:.btn}

## Notes

- The `category_path` setting determines the URL path for category pages
- The `category_layout` setting specifies the layout file to use for individual category pages
- Ensure you have the necessary plugins or custom code to generate category pages
