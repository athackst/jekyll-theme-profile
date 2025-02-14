---
title: "Write a post"
order: 3
category: Getting started
---

To add new posts, simply add a file in the `_posts` directory that follows the convention `YYYY-MM-DD-name-of-post.ext` and includes the necessary front matter. Take a look at the source for this post to get an idea about how it works.

Check out the [Jekyll docs][jekyll-docs] for more info on how to get the most out of Jekyll. File all bugs/feature requests at [Jekyll’s GitHub repo][jekyll-gh]. If you have questions, you can ask them on [Jekyll Talk][jekyll-talk].

[jekyll-docs]: https://jekyllrb.com/docs/home
[jekyll-gh]: https://github.com/jekyll/jekyll
[jekyll-talk]: https://talk.jekyllrb.com/


## Front matter

All blog posts must begin with front matter which is typically used to set a layout or other meta data.  For a simple example, this can just be empty:

```markdown
---
layout: post
title: "welcome to Jekyll!"
---

# Welcome

**Hello world**, this is my first Jekyll blog post.

I hope you like it!
```

Here's a list of variables for this theme

| Variable | Description |
|---|---|
| `layout` | Specifies the layout file to use.  Use the layout file name without the file extension. <br/><br/> Go to [docs](../_docs/index.html) to learn about options |
| `permalink` | If you need or processed blog post URLs to be something other than the site-wide default (`/year/month/day/title.html`), then you can set this variable and it will be used as the final URL |
| `published` | Set to false if you don't want a specific post to show up when the site is generated |
| `date` | A date here overrides the date from the name of the post.  This can be used to ensure correct sorting of posts.  A date is specified in the format `YYYY-MM-DD HH:MM:SS +/-TTTT`: hours, minutes,seconds, and timezone offset are optional |
| `category` or `categories` | Instead of placing posts inside of folders, you can specify one or more categories that the post belongs to.  When the site is generated the post will act as though it had been set with these categories normally.  Categories (plural key) can be specified as a YAML list or a space-separated string |
| `tags` | Similar to categories, one or multiple tags can be added to a post.  Also like categories, tags can be specified as a YAML list or a space-separated string |
| `description` | A longer description used for hte description meta tag |
| `image` | URL to an image associated with the post for SEO |
| `author` | Post-specific author information |
| `locale` | Post-specific locale information |
| `excerpt_separator` | You can access a snippet of a posts' content by using `excerpt` variable on a post.  By default this is the first paragraph of content in the post, but can be customized by using `excerpt_separator`. <br/><br/>Example `excerpt_separator: <!--more-->` |


## Including images and resources

At some point, you’ll want to include images, downloads, or other digital assets along with your text content. One common solution is to create a folder in the root of the project directory called something like `assets`, into which any images, files or other resources are placed. Then, from within any post, they can be linked to using the site’s root as the path for the asset to include. The best way to do this depends on the way your site’s (sub)domain and path are configured, but here are some simple examples in Markdown:

Including an image asset in a post:

```markdown
... which is shown in the screenshot below:
![My helpful screenshot](/assets/screenshot.jpg)
```

Linking to a PDF for readers to download:

```markdown
... you can [get the PDF](/assets/mydoc.pdf) directly.
```

## Tags and Categories

Jekyll has first class support for *tags* and *categories* in blog posts.

### Tags

Tags for a post are defined in the post’s front matter using either the key `tag` for a single entry or `tags` for multiple entries.
Since Jekyll expects multiple items mapped to the key `tags`, it will automatically split a string entry if it contains whitespace. For example, while front matter `tag: classic hollywood` will be processed into a singular entity `"classic hollywood"`, front matter `tags: classic hollywood` will be processed into an array of entries `["classic", "hollywood"]`.

Irrespective of the front matter key chosen, Jekyll stores the metadata mapped to the plural key which is exposed to Liquid templates.

By default the theme will show posts related by tags or categories with the setting:

```yaml
# related
related_by: "tags or categories"
```

These show up as "related posts" underneath a post.

See [tagging](plugins/tagging.md) for additional features and settings using the `jekyll-tagging` plugin.

### Categories

Categories of a post work similar to the tags above:

- They can be defined via the front matter using keys `category` or `categories` (that follow the same logic as for tags)
- All categories registered in the site are exposed to Liquid templates via `site.categories` which can be iterated over (similar to the loop for tags above.)

*The similarity between categories and tags however, ends there.*

Unlike tags, categories for posts can also be defined by a post’s file path. Any directory above _posts will be read-in as a category. For example, if a post is at path `movies/horror/_posts/2019-05-21-bride-of-chucky.markdown`, then `movies` and `horror` are automatically registered as categories for that post.

When the post also has front matter defining categories, they just get added to the existing list if not present already.

The hallmark difference between categories and tags is that categories of a post may be incorporated into the generated URL for the post, while tags cannot be.

Therefore, depending on whether front matter has `category: classic hollywood`, or `categories: classic hollywood`, the example post above would have the URL as either `movies/horror/classic%20hollywood/2019/05/21/bride-of-chucky.html` or `movies/horror/classic/hollywood/2019/05/21/bride-of-chucky.html` respectively.

See [category pages](plugins/category-pages.md) for additional features and settings using the `jekyll-category-pages` plugin.
