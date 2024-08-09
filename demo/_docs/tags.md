---
title: Tags Layout
category: layouts
order: 3
---

The Tags layout provides an index view of all your tags.

## Usage

To use the Tags layout, create a new file (e.g., `tags.md`) with the following front matter:

```yaml
---
title: Tags
layout: tag_index
---
```

## Configuration

Add the following to your `_config.yml`:

```yaml
# jekyll-tagging settings
# Include `gem jekyll-tagging` in your gemfile
tag_page_layout: tags
tag_page_dir: tags
# related
related_by: "tags or categories"
```

## Features

- Displays an index of all tags used in your site
- Generates individual pages for each tag
- Can show related content based on tags or categories

## Demo

[Live demo](../tags/index.html){:.btn}

## Notes

- Ensure you have the `jekyll-tagging` gem included in your `Gemfile`
- The `tag_page_layout` and `tag_page_dir` settings control the layout and location of individual tag pages
- Use the `related_by` setting to determine how related content is identified
