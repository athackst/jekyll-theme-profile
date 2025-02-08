---
title: "Pagination"
category: Plugins
order: 31
---

# Pagination

`jekyll-paginate` is a Jekyll plugin that adds pagination functionality to your site, allowing posts to be split across multiple pages instead of displaying all posts on a single page.

## Usage

1. Add the following to your `Gemfile`:

   ```ruby
   group :jekyll_plugins do
     gem "jekyll-paginate"
   end
   ```

   Then, install the plugin:

   ```sh
   bundle install
   ```

2. Add the following settings to your `_config.yml` file:

   ```yaml
   # jekyll-paginate settings
   paginate: 5  # Number of posts per page
   paginate_path: "/blog/page:num"  # URL structure for paginated pages
   ```

3. (optional) Add a index page `blog/index.html`

    ```text
    ---
    title: My Blog
    layout: paginate
    ---
    ```

## Demo

[Live demo](../../blog/index.html){:.btn}

## Additional resources

- [Jekyll Pagination Documentation](https://jekyllrb.com/docs/pagination/)
- [jekyll-paginate Repository](https://github.com/jekyll/jekyll-paginate)
