---
title: Repositories Layout
category: layouts
order: 3
---

The Repositories layout provides a view of all your repositories.

## Usage

To use the Repositories layout, create a new file (e.g., `repositories.md`) with the following front matter:

```yaml
---
layout: repositories
title: My Repositories
---
```

## Configuration

Add the following to your `_config.yml`:

```yaml
###################
# Repositories to show on home page
repositories:
  sort_by: stars
  # sort_by options:
  #   - pushed
  #   - stars
  limit: 24
  exclude:
    archived: true
    forks: true
    repositories:
      # - list of repositories to exclude
```

## Features

- Displays a list of your GitHub repositories
- Allows sorting by stars or last pushed date
- Provides options to exclude archived repositories, forks, or specific repositories

## Demo

[Live demo](../repositories.md){:.btn}

## Notes

- Adjust the `sort_by` option to change how repositories are ordered
- Use the `limit` option to control how many repositories are displayed
- Customize the `exclude` section to filter out specific types of repositories
