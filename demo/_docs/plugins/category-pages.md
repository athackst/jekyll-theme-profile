---
title: "Category pages"
category: Plugins
order: 33
---

`jekyll-category-pages` is a Jekyll plugin that automatically creates pages for each category in your site. Instead of manually setting up category pages, this plugin generates them dynamically based on your site's posts.


## Usage

1. Add the following to your `Gemfile`

```
group :jekyll_plugins do
  gem "jekyll-paginate"
  gem "jekyll-category-pages"
end
```

and install it

```
bundle install
```

2. Add the following settings to your `_config.yml` file

```yaml
# jekyll-category-pages settings
category_path: category
category_layout: category_layout.html
```

3. (optional) Add a tag index page `category/index.html` with the following content

```text
---
title: Category
layout: category_index
---
```

4. Add a category to your post

To assign a category to a post, include it in the front matter

```text
---
title: My Sample Post
category: sample
---
```

Or place the post within a directory.  The directory names will be automatically registered as categories for the post.

## Demo

[Live demo](../../category/index.html){:.btn}

## Additional resources

- [Jekyll categories](https://jekyllrb.com/docs/posts/#categories)
- [jekyll-category-pages repository](https://github.com/field-theory/jekyll-category-pages)
- [Posts](../posts.md#categories)
