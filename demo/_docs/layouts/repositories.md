---
title: Repositories Layout
category: layouts
order: 25
---

The **repositories** layout is designed for displaying a list of repositories on your Jekyll site. It provides a structured format to showcase repositories dynamically using predefined includes.

## Usage

To use the Repositories layout in your Jekyll site, create a new file with the following front matter:

```yaml
---
layout: repositories
---
```

## Parameters

The Repositories layout accepts several parameters in the front matter:

| Parameter      | Default      | Description |
|--------------|------------|-------------|
| `layout`     | Required    | Must be set to `repositories` |
| `title`      | `Repositories` | The title displayed on the page |
| `content`    | Optional    | Additional text or descriptions displayed before the repositories |

## Functionality

1. Displays a title for the repositories page.
2. Optionally includes descriptive content before the repository list.
3. Dynamically loads and displays repositories using the `repositories.html` include.
4. Supports Jekyll’s standard content management for additional customization.

## Example Usage

This example shows a basic Repositories page with a custom title and description:

```yaml
---
layout: repositories
title: My Projects
---
Welcome to my open-source projects repository page. Here you can find all my latest projects.
```

[Live demo](../../repositories.md){:.btn}

## Notes

- Ensure that the `repositories` is [configured](../configuration.md#repositories-optional) in your `_config.yml` file.
- You may need to include the `jekyll-github-metadata` plugin in your Gemfile and/or included in `_config.yml`. 
    ```
    plugins:
    - jekyll-github-metadata
    ```
