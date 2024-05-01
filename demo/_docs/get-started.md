---
title: "Get started"
order: 1
category: Getting started
---


![jekyll-theme-profile](https://raw.githubusercontent.com/athackst/jekyll-theme-profile/main/screenshot.png)


This theme is based on GitHub's primer style. It supports both light and dark modes, and four style options: appbar, sidebar, topbar, and stacked. Setting up is a breeze, as it automatically populates your profile using your GitHub user info. Add custom links like Linktree and share engaging blog posts effortlessly.

## Installation

Add this line to your Jekyll site's `Gemfile`:

```ruby
gem "jekyll-theme-profile"
```

And then execute:

```shell
bundle
```
Or install it yourself as:

```shell
gem install jekyll-theme-profile
```

## Configuration

And add this line to your Jekyll site's `_config.yml`:

```yaml
theme: jekyll-theme-profile
style: topbar # One of "stacked", "sidebar", "topbar", "appbar"
repository: athackst/jekyll-theme-profile # for repository info to be included
repo_info: true # Show the information for the source of this project
user_metadata: true # Show the metadata associated with the user
profile_link: true # Show a link to the github profile for the user
```

Or you can start with a [sample config](https://github.com/athackst/jekyll-theme-profile/blob/main/demo/_config.yml) that you can copy and customize.

### Extras

You may also want to add the following supported plugins to your gemfile

```gemfile
  gem 'jekyll-paginate' # Needed for blog index
  gem 'jekyll-relative-links' # Needed for breadcrumbs in docs
  gem 'jekyll-tagging' # Needed for tag pages for blog posts
  gem 'jekyll-github-metadata', '= 2.13.0' # Needed to rate limit API calls.
```

And the corresponding plugins to your `_config.yml` file:

```yaml
# ########### Plugin settings ###############
plugins:
  - jekyll-github-metadata
  - jekyll-relative-links
```

## Building

Build the site and make it available on a local server

```shell
bundle exec jekyll serve
```
