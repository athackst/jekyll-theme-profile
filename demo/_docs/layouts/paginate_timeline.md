---
title: Paginate Timeline Layout
category: layouts
order: 25
---

The **paginate_timeline** layout is designed to display blog posts (or other collections) in a paginated timeline format. It uses Jekyll’s built-in pagination and a supporting [`post-timeline.html`](../includes/post-timeline.md) include to list items. This layout is particularly useful for blogs with many posts, where readers can navigate page by page.

## Usage

To use the Paginate Timeline layout in your Jekyll site, create a new file with the following front matter:

```yaml
---
layout: paginate_timeline
title: My Paginated Blog
---
```

Jekyll’s pagination feature must be enabled in your `_config.yml`. For example:

```yaml
paginate: 5
paginate_path: "/blog/page:num"
```

This config will split your post list into chunks of five items per page.

The Paginate Layout must be specified in the index of the start of this path.  For the example above, it should be in `/blog/index.html`.

> [!NOTE]
> The path should be *absolute* and start with a `/`, otherwise the index links  will not work correctly.

## Parameters

The Paginate Timeline layout supports the following:

| Parameter                  | Default                                  | Description                                                                                                      |
|----------------------------|------------------------------------------|------------------------------------------------------------------------------------------------------------------|
| `layout`                   | Required                                 | Must be set to `paginate_timeline`                                                                               |
| `title`                    | None                                     | The heading to display on the timeline page                                                                      |
| `content`                  | None                                     | You can write page content below the front matter. It will appear above the timeline.                            |
| `pagination.permalink`     | `site.pagination.permalink` or `site.paginate_path` | Path structure for pagination pages (e.g., `page:num`)                                                           |
| `posts_limit`              | `site.paginate`                          | Number of posts to display per page, if desired. Can also be overridden in `_config.yml`.                         |

## Functionality

1. **Page Content**: The layout renders any Markdown or HTML in {% raw %}`{{ content }}`{% endraw %} before displaying the timeline.
2. **Post Timeline**: It includes the `post-timeline.html` partial, which loops through the specified collection (typically `paginator.posts`) and renders each post.
3. **Pagination Links**: At the bottom of the page, you’ll find controls for navigating to previous and next pages, as well as direct links to individual pages.
4. **Custom Index Path**: The layout attempts to resolve `paginator.first_page_path` or a fallback URL for linking back to the main blog index.
5. **Site-Level Configuration**: The layout relies on your `_config.yml` settings (`paginate`, `paginate_path`, etc.) to define pagination behavior.

## Example Usage

Below is a minimal usage example:

```yaml
---
layout: paginate_timeline
title: My Paginated Blog
---
Welcome to my blog! Below is a list of the latest posts. Use the pagination buttons to navigate.
```

`_config.yml`

```yaml
paginate: 5
paginate_path: "blog/page:num"
```

With this configuration:
1. Each page shows 5 posts.
2. Pagination paths follow the pattern `/blog/page1`, `/blog/page2`, etc.

## Notes

- **Jekyll Pagination Plugin**: Ensure you have the [jekyll-paginate](../plugins/pagination.md) plugin configured (depending on your Jekyll version).
- **Page vs. Post**: Paginated content is typically drawn from `site.posts`, but you can specify a different collection if desired.
- **Responsive**: The layout is designed to adapt to mobile, tablet, and desktop screens.

## Dependencies

1. [`post-timeline.html`](../includes/post-timeline.md) (included): Used to render the collection of posts.
2. [`post-timeline-card.html`](../includes/post-timeline-card.md) (included): Used to render each post.
3. [**pagination**](../plugins/pagination.md): Make sure your Jekyll site is set up for pagination, or the layout’s pagination features will not work.

Ensure these dependencies are properly set up in your Jekyll theme for the Paginate Timeline layout to function correctly.
