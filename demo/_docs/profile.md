---
title: Profile Layout
category: layouts
order: 3
---

The Profile layout creates a profile page similar to the one on GitHub.

## Usage

To use the Profile layout, create a new file (e.g., `profile.md`) with the following front matter:

```yaml
---
layout: profile
---
```

## Configuration

Add the following to your `_config.yml`:

```yaml
# The user/project avatar. If not set the avatar of the project owner will be used.
user_image: /media/user-image.jpg
repo_info: true # Show the information for the source of this project
user_metadata: true # Show the metadata associated with the user
profile_link: true # Show a link to the github profile for the user
```

## Features

- Displays user avatar
- Shows repository information
- Includes user metadata
- Provides a link to the user's GitHub profile

## Demo

[Live demo](../profile.md){:.btn}

## Notes

- Set `user_image` in `_config.yml` to use a custom avatar image
- Toggle `repo_info`, `user_metadata`, and `profile_link` to control what information is displayed
