---
title: Landing layout
category: layouts
order: 24
---

The **landing** layout is designed for creating a sleek, minimal homepage or landing page for your Jekyll site. It provides a structured format for showcasing a masthead, repository information, navigation links, and social media profiles.

## Usage

To use the Landing layout in your Jekyll site, create a new file with the following front matter:

```yaml
---
layout: landing
---
```

## Parameters

The Landing layout accepts several parameters in the front matter:

| Parameter       | Default                      | Description |
|---------------|----------------------------|-------------|
| `layout`      | Required                     | Must be set to `landing` |
| `style`       | `none`                        | Layout style customization (optional) |
| `repo_info`   | `site.repo_info`             | Displays repository information if enabled |
| `nav`         | `site.nav`                    | Displays site navigation if enabled |
| `social_media` | `site.social_media`         | Displays social media links if provided |

## Functionality

1. Displays a masthead for branding and introduction.
2. Optionally includes a repository information card.
3. Shows navigation links if configured.
4. Includes a section for social media links.
5. Provides a customizable structure for content placement.

## Example Usage

This example shows a basic Landing page setup:

```yaml
---
layout: landing
style: none
repo_info: true
nav: true
social_media: true
---
```

[Live demo](../../landing.md){:.btn}

## Notes

- Ensure `repo_info`, `nav`, and `social_media` are configured in `_config.yml` if needed.
- Custom styles can be applied by modifying the theme’s CSS.
- The layout is responsive and should work well on all screen sizes.

## Dependencies

This layout may depend on:

1. `masthead.html` include for branding.
2. `toggle.html` include for theme switching.
3. `mini-repo-info-card.html` include for repository info.
4. `nav.html` include for navigation.
5. `social.html` include for social media links.

Ensure these dependencies are properly set up in your Jekyll theme for the Landing layout to function correctly.
