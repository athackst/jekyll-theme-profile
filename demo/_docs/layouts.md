---
title: "Theme layouts"
order: 4
category: Advanced
---


## Docs

This layout is ideal for documentation, and follows the document style on [github docs](https://docs.github.com)

[Live demo](/docs){:.btn}

**_config.yml**

```yaml
collections:
  docs:
    output: true
    sort_by: order
defaults:
  - scope:
      path: "" # an empty string here means all files in the project
      type: "docs"
    values:
      layout: "docs"
      image: /assets/img/default.png # The default image used for social and posts.
      permalink: /docs/:path
      toc: true
```

**markdown front matter**

```yaml
---
title: Documentation
layout: docs
---
```

## Landing

This layout includes site.nav data, your repo card

[Live demo](/){:.btn}

**_config.yml**

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


**markdown front matter**

```yaml
---
layout: landing
---
```

## Linktree

This layout provides a linktree-like view for your webpage.

[Live demo](/linktree){:.btn}

**_config.yml**

```yaml
####################
# List of links for link cards
links:
  - name: Example page with topbar
    url: /page/topbar
    thumbnail: /media/topbar-icon.png
  - name: Example page with appbar
    url: /page/appbar
    thumbnail: /media/appbar-icon.png
  - name: Example page with sidebar
    url: /page/sidebar
    thumbnail: /media/sidebar-icon.png
  - name: Example page with header stacked
    url: /page/stacked
    thumbnail: /media/stacked-icon.png
  - name: Example custom background
    url: /background
    thumbnail: /media/icon-bg.png
  - name: Example Linktree page
    url: /linktree
    thumbnail: /media/links.png
  - name: Example Profile page
    url: /profile
    thumbnail: /media/user-image.jpg
  - name: Example Reposotiries page
    url: /repositories
    thumbnail: /media/repositories.png
```

**markdown front matter**

```yaml
---
layout: linktree
title: Linktree
links:
  - name: Example page with topbar
    url: /page/topbar
    thumbnail: /media/topbar-icon.png
  - name: Example page with appbar
    url: /page/appbar
    thumbnail: /media/appbar-icon.png
  - name: Example page with sidebar
    url: /page/sidebar
    thumbnail: /media/sidebar-icon.png
  - name: Example page with header stacked
    url: /page/stacked
    thumbnail: /media/stacked-icon.png
  - name: Example custom background
    url: /background
    thumbnail: /media/icon-bg.png
  - name: Example Linktree page
    url: /linktree
    thumbnail: /media/links.png
  - name: Example Profile page
    url: /profile
    thumbnail: /media/user-image.jpg
  - name: Example Reposotiries page
    url: /repositories
    thumbnail: /media/repositories.png
```

## Profile

A profile page similar to the one on github

[Live demo](/profile){:.btn}

**_config.yml**

```yaml
# The user/project avatar.  If not set the avatar of the project owner will be used.
user_image: /media/user-image.jpg
repo_info: true # Show the information for the source of this project
user_metadata: true # Show the metadata associated with the user
profile_link: true # Show a link to the github profile for the user
```

**markdown page**

```md
---
layout: profile
---
```

## Repositories

A view of all of your repositories

[Live demo](/repositories){:.btn}

**_config.yml**

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
      # - list of respositories to exclude
```

**markdown page**
```md
---
layout: repositories
title: My Repositories
---
```

## Tags

An index view of all of your tags

[Live demo](/tags){:.btn}

**_config.yml**

```yaml
# jekyll-tagging settings
# Include `gem jekyll-tagging` in your gemfile
tag_page_layout: tags
tag_page_dir: tags
# related
related_by: "tags or categories"
```

**markdown page**

```md
---
title: Tags
layout: tag_index
---
```

# Categories

An index view of all of your categories

[Live demo](/category){:.btn}

**_config.yml**

```yaml
# jekyll-category-pages settings
category_path: category
category_layout: category_layout.html
```

**markdown page**

```md
---
title: Category
layout: category_index
---

```
