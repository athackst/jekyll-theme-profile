---
layout: post
permalink: /
image: screenshot.png
summary: A customizable jekyll theme built off of the github primer css
toc: true
---
# jekyll-theme-profile

![jekyll-theme-profile](screenshot.png)


Meet "jekyll-theme-profile" – your ultimate Jekyll theme, based on GitHub's primer style. With both light and dark modes, and three stylish options: sidebar, topbar, and stacked, it's all about personalization. Setting up is a breeze, as it automatically populates your profile using your GitHub user info. Add custom links like Linktree and share engaging blog posts effortlessly. Get ready to rock your online presence with this user-friendly and charming theme, making Jekyll and GitHub Pages a joy to use!

## Installation

Add this line to your Jekyll site's `Gemfile`:

```ruby
gem "jekyll-theme-profile"
```

And add this line to your Jekyll site's `_config.yml`:

```yaml
theme: jekyll-theme-profile
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install jekyll-theme-profile

## Usage

Here's a sample config file you can copy and customize:

```yaml
repository: athackst/jekyll-theme-profile
# The style of the website
style: topbar # One of "stacked", "sidebar", "topbar"
 # The user/project avatar.  If not set the avatar of the project owner will be used.
user_image: /media/user-image.jpg
# Optional custom background image and overlay
# background:
#   image: /media/background-img.jpg
#   single overlay for all or custom for light and dark modes
#   overlay: rgba(0, 0, 0, 0.5)
#   light:
#     overlay: rgba(255, 255, 255, 0.5)
#   dark:
#     overlay: rgba(0, 0, 0, 0.5)

# repo_info: true # Show the information for the source of this project
# user_metadata: true # Show the metadata associated with the user
# profile_link: true # Show a link to the github profile for the user

####################
# Social media
# social_image: /screenshot.png # The social media thumbnail image to use in post links.
# icon_color: "#959da5" # The color of the social media icons on the site
# social_media: # Your social media accounts
  # behance: your_username
  # dribbble: your_username
  # docker: your_username
  # facebook: your_username
  # github: your_username
  # hackerrank: your_username
  # instagram: your_username
  # keybase: your_username
  # linkedin: your_username
  # mail: email@address
  # mastodon: your_username
  # medium: your_username
  # stackoverflow: your_user_id
  # telegram: your_username
  # threads: your_username
  # tiktok: your_username
  # twitter: your_username
  # unsplash: your_username
  # vk: your_username
  # vscode: your_username
  # youtube: your_username
  # x: your_username

####################
# Navigation links
# nav:
#   - name: Topbar
#     url: /test/home/topbar.html
#   - name: Appbar
#     url: /test/home/appbar.html
#   - name: Sidebar
#     url: /test/home/sidebar.html
#   - name: Stacked
#     url: /test/home/stacked.html

####################
# List of links for home page
# links:
#   - name: Example page with topbar
#     url: /test/page/topbar
#     thumbnail: /media/icon-topbar.png
#   - name: Example page with appbar
#     url: /test/page/appbar
#   - name: Example page with sidebar
#     url: /test/page/sidebar
#     thumbnail: /media/icon-sidebar.png
#   - name: Example page with header stacked
#     url: /test/page/stacked
#     thumbnail: /media/icon-stacked.png
#   - name: Example page with a custom background
#     url: /test/page/background
#     thumbnail: /media/icon-bg.png

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

####################
# Blog
posts_limit: 3 # The number of posts to show in home

paginate: 6 # The number of posts to show per page of pagination of blog posts
paginate_path: "/assets/blog/page:num"
```

You can also use this with github acions. Below is a typical worfklow file

```yaml
# Sample workflow for building and deploying a Jekyll site to GitHub Pages
name: Docs

on:
  # Runs on pushes targeting the default branch
  push:
    branches: ["main"]

  # Run on every pull request
  pull_request:
    types: [opened, reopened, synchronize ]

  # Allows you to run this workflow manually from the Actions tab
  workflow_dispatch:

  schedule:
    # This will refresh your repositories and other user information every day
    # * is a special character in YAML so you have to quote this string
    # Generate from https://crontab.guru/
    #        ┌───────────── minute (0 - 59)
    #        │ ┌───────────── hour (0 - 23)
    #        │ │ ┌───────────── day of the month (1 - 31)
    #        │ │ │ ┌───────────── month (1 - 12 or JAN-DEC)
    #        │ │ │ │ ┌───────────── day of the week (0 - 6 or SUN-SAT)
    #        │ │ │ │ │
    #        │ │ │ │ │
    #        │ │ │ │ │
    #        * * * * *
    - cron: "0 0 * * *"

# Sets permissions of the GITHUB_TOKEN to allow deployment to GitHub Pages
permissions:
  contents: read # needed to read your repository
  pages: write # needed to enable and deploy github pages
  id-token: write

# Allow only one concurrent deployment, skipping runs queued between the run in-progress and latest queued.
# However, do NOT cancel in-progress runs as we want to allow these production deployments to complete.
concurrency:
  group: "pages"
  cancel-in-progress: false

jobs:
  # Build job
  build:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout
        uses: actions/checkout@v3
      - name: Setup Ruby
        uses: ruby/setup-ruby@v1.152.0
        with:
          bundler-cache: true # runs 'bundle install' and caches installed gems automatically
      - name: Setup Pages
        id: pages
        uses: actions/configure-pages@v3
        with:
          enablement: true # Enable github pages if it's not
      - name: Build
        run: bundle exec jekyll build
        env:
          JEKYLL_ENV: production
          JEKYLL_GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
      - name: HTMLProofer
        uses: athackst/htmlproofer-action@v0.3.0
        with:
          ignore_urls: |
            https://opensource.org/license/mit/
      - name: Upload artifact
        uses: actions/upload-pages-artifact@v1

  # Deployment job
  deploy:
    if: github.ref == 'refs/heads/main' # Only deploy from the main branch
    environment:
      name: github-pages
      url: ${{ steps.deployment.outputs.page_url }}
    runs-on: ubuntu-latest
    needs: build
    steps:
      - name: Deploy to GitHub Pages
        id: deployment
        uses: actions/deploy-pages@v2

```

### Choose your style

Select the default style for your theme by adding `style` to your config file:

```yaml
style: sidebar # One of "stacked", "sidebar", "topbar"
```

You can also set the style of a particular page by adding `style` to your frontmatter.

```yaml
---
style: sidebar # One of "stacked", "sidebar", "topbar"
---
```

#### [Sidebar](/test/home/sidebar.md)

![Sidebar image](/media/sidebar-preview.png)

#### [Stacked](/test/home/stacked.md)

![Stacked image](/media/stacked-preview.png)

#### [Topbar](/test/home/topbar.md)

![Topbar image](/media/topbar-preview.png)

#### [Appbar](/test/home/appbar.md)

![Appbar image](/media/appbar-preview.png)

#### Background

You can even change the background by adding the following to your `_config.yml` file.

```yaml
background:
  image: /media/background-img.jpg
  overlay: rgba(0, 0, 0, 0.5) # Overlay for both light and dark styles
  light:
    overlay: rgba(255, 255, 255, 0.5)
  dark:
    overlay: rgba(0, 0, 0, 0.5)
```

or

```yaml
background:
  image: /media/background-img.jpg
  light: # custom overlay for light and dark styles
    overlay: rgba(255, 255, 255, 0.5)
  dark:
    overlay: rgba(0, 0, 0, 0.5)
```

[Example page](/test/page/background.md)

#### Header

You can change the header color by adding the following to your `_config.yml` file

```yaml
header:
  color: "#4051b5"
  text: "rgba(255,255,255,0.7)"
  accent: "#ffffff"
```

### Nav

In the `nav` section, you can add navigation links that will show up on every page of your website.

![Nav](/media/nav.png){: .border}

```yaml
nav:
  - name: Topbar
    url: /test/home/topbar.html
  - name: Sidebar
    url: /test/home/sidebar.html
  - name: Stacked
    url: /test/home/stacked.html
```

### Links

In the `links` section, you can add links to showcase various pages on the web or your website.

![Links](/media/links.png){: .border}

```yaml
links:
  - name: Example full entry
    url: https://www.example.com
    thumbnail: /media/icon-topbar.png
    description: Example description
  - name: Example entry with url and image
    url: https://www.example.com
    thumbnail: /media/icon-sidebar.png
  - name: Example entry with image
    thumbnail: /media/icon-stacked.png
  - name: Example entry with description
    description: Example Description
  - name: Example entry with only a name
```

### Repositories

The `repositories` section allows you to display your GitHub repositories on your page.  You can sort them by stars or latest pushes, set a limit to the number of repositories displayed, and exclude archived, forked, or specific repositories from the list

![Repositories](/media/repositories.png){: .border}

```yaml
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
      # - respositories to exclude
```

### Social media

#### Setting the social media card

You can set the social media image for your site with the setting

```yaml
social_image: /screenshot.jpg
```

This works on both yaml frontmatter for a page and in the `_config.yml` file.  Page settings will override site settings.

#### Adding your socials

Utilize the `social_media` section to add links to your various social media profiles.  For each platform simply provide your username or user ID to have the corresponding icon and link appear on your profile.

![Social Media](/media/social-media.png){: .border}

```yaml
social_media:
  behance: your_username
  dribbble: your_username
  docker: your_username
  facebook: your_username
  github: your_username
  hackerrank: your_username
  instagram: your_username
  keybase: your_username
  linkedin: your_username
  mail: email@address
  mastodon: your_username
  medium: your_username
  stackoverflow: your_user_id
  telegram: your_username
  threads: your_username
  tiktok: your_username
  twitter: your_username
  unsplash: your_username
  vk: your_username
  vscode: your_username
  youtube: your_username
  x: your_username
```

You can also set the icon color.  If you don't set an icon color, the original icon colors will be used.

```yaml
icon_color: "#959da5"
```

### Blog

Make entries for the blog the same way you normally would by placing entries in the `_posts` folder.  You can adjust the number of entries that show up in the main page by adjusting `posts_limit` in the `_config.yml` file.  If you have more posts than the limit, a `Read more` button will link to the paginated blog post page /blog/index.html.

![Blog](/media/blog.png){: .border}

```yaml
posts_limit: 3
```

Additionally, the theme provides a paginate layout you can use.  By default, the theme serves pagination from `/assets/blog/index.html`.

But you can adjust the source by updating the config

```yaml
paginate: 6
paginate_path: "/assets/blog/page:num"
```

And adding a `index.html` page at the `pagenate_path`

```yaml
---
layout: paginate
title: My Blog
---
```

## Custom styles

### Site style

You can override any style with styles defined in `/assets/css/style.css` or `/assets/css/style.scss` files.  This is to support config based styling which needs jekyll variables.

### Page style

You can add css to any page through the `css_style` variable in front matter.

```yaml
---
css_style: |
    .Link-btn {
        background: rgba(0.1, 0.1, 0.1, 0.4);
        color: #FFFF;
    }
    h1 {
        color: #FFFF;
    }
---

```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/athackst/jekyll-theme-profile. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](https://www.contributor-covenant.org/) code of conduct.

See [Contributing](/CONTRIBUTING.md) for more information on contributing to this theme.

## License

The theme is available as open source under the terms of the [MIT License](https://opensource.org/license/mit/).
