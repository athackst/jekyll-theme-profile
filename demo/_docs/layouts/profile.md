---
title: Profile Layout
category: layouts
order: 21
---

The **profile** layout is designed for creating a personal or organizational profile page in your Jekyll site. It provides a structured format to showcase a user’s profile image, bio, social links, blog posts, and repositories.

## Usage

To use the Profile layout in your Jekyll site, create a new file with the following front matter:

```yaml
---
layout: profile
---
```

## Parameters

The Profile layout accepts several parameters in the front matter:

| Parameter         | Default                      | Description |
|------------------|----------------------------|-------------|
| `layout`        | Required                     | Must be set to `profile` |
| `style`         | `default`                    | Layout style (`default`, `sidebar`, `stacked`) |
| `user_image`    | `site.user_image` or `site.github.owner.avatar_url` | Custom user profile image |
| `links`         | `site.links`                 | An array of social/profile links |
| `collection`    | `site.posts`                 | Collection of posts to display in the blog section |
| `posts_limit`   | `site.paginate`              | Number of posts to display |

Each link object in the `links` array can have the following properties:

| Property  | Description |
|----------|-------------|
| `name`   | The text to display for the link |
| `url`    | The URL the link should point to |
| `icon`   | A custom icon for the link (optional) |

## Functionality

1. Displays a profile section with an image and name.
2. Includes social/profile links if provided.
3. Shows a timeline of blog posts from the specified collection.
4. Optionally displays repositories if `site.repositories` is enabled.
5. Supports different layout styles (`default`, `sidebar`, `stacked`).

## Example Usage

This example shows a basic Profile page with user information and links:

```yaml
---
layout: profile
user_image: /assets/img/custom-user.jpg
style: sidebar
links:
  - name: GitHub
    url: https://github.com/username
    icon: mark-github
  - name: Twitter
    url: https://twitter.com/username
    icon: twitter
collection: site.posts
posts_limit: 5
---
```

[Live demo](../../profile.md){:.btn}

## Notes

- Ensure all image URLs are correct and accessible.
- Icons require the correct library to be included in your theme.
- The layout is responsive and should work well across different screen sizes.
- Custom styling can be added using additional CSS overrides in your theme.

## Dependencies

This layout may depend on:

1. `masthead.html` include for rendering the profile header.
2. `social.html` include for displaying social links.
3. `post-timeline.html` include for listing blog posts.
4. `repositories.html` include for rendering repositories.

Ensure these dependencies are properly set up in your Jekyll theme for the Profile layout to function correctly.
