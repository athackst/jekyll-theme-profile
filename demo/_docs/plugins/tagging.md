---
title: "Tagging"
category: Plugins
order: 32
---

`jekyll-tagging` is a plugin that enables better tag support in Jekyll sites.

## Usage

1. Add the following line to your `Gemfile`

```
gem 'jekyll-tagging`
```

2. Add the following settings to your `_config.yml` file

```yaml
tag_page_layout: tags
tag_page_dir: tags
```

3. (optional) Add a tag index page `tags/index.html` with the following content

```text
---
title: Tags
layout: tag_index
---
```

4. Add tags to your posts

To assign tags to a post, include them in the front matter

```text
---
title: My Sample Post
tags: [jekyll, tutorial, plugins]
---
```

## Demo

[Live demo](../../tags/index.html){:.btn}

## Additional resources

- [Jekyll tags](https://jekyllrb.com/docs/posts/#tags)
- [jekyll-tagging repository](https://github.com/pattex/jekyll-tagging)
- [Posts documentation](../posts.md#tags)
