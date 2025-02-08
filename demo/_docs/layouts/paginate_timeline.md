---
title: Paginate Timeline Layout
category: layouts
order: 25
published: false
---
### Post timeline

Make entries for the blog the same way you normally would by placing entries in the `_posts` folder.  You can adjust the number of entries that show up in the main page by adjusting `posts_limit` in the `_config.yml` file.  If you have paginate installed and more posts than the limit, a `Read more` button will link to the paginated blog post page /blog/index.html.

![Blog](https://raw.githubusercontent.com/athackst/jekyll-theme-profile/main/demo/media/blog.png){: .border}

```yaml
posts_limit: 3
```

If you set the posts_limit to `0`, all of the posts will be displayed.
