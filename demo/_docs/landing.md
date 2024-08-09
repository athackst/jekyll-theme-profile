---
title: Landing Layout
category: layouts
order: 3
---

The Landing layout is designed for your site's main page, including navigation links and repository information.

## Usage

To use the Landing layout, create a new file (e.g., `index.md`) with the following front matter:

```yaml
---
layout: landing
---
```

## Configuration

Add the following to your `_config.yml`:

```yaml
repo_info: true # Show the information for the source of this project
user_metadata: true # Show the metadata associated with the user
profile_link: true # Show a link to the github profile for the user

####################
# Navigation links
nav:
  - name: Topbar
    url: /topbar.html
  - name: Appbar
    url: /appbar.html
  - name: Sidebar
    url: /sidebar.html
  - name: Stacked
    url: /stacked.html
```

## Features

- Displays repository information
- Shows user metadata
- Includes a link to the user's GitHub profile
- Displays navigation links defined in `_config.yml`

## Demo

[Live demo](../index.md){:.btn}

## Notes

- Customize the `nav` section in `_config.yml` to add or modify navigation links
- The `repo_info`, `user_metadata`, and `profile_link` options can be toggled to control what information is displayed
