---
permalink: /
---
![jekyll-theme-profile](screenshot.png)

# jekyll-theme-profile
{:.no_toc}

Meet "jekyll-theme-profile" – your ultimate Jekyll theme, based on GitHub's primer style. With both light and dark modes, and three stylish options: sidebar, topbar, and stacked, it's all about personalization. Setting up is a breeze, as it automatically populates your profile using your GitHub user info. Add custom links like Linktree and share engaging blog posts effortlessly. Get ready to rock your online presence with this user-friendly and charming theme, making Jekyll and GitHub Pages a joy to use!

1. TOC
{:toc}

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
repository: athackst/jekyll-theme-profile # Your repository name
url: https://username.github.io # The host url for your site
baseurl: "" # or your package name /jekyll-theme-profile (leave blank if it is the username.github.io package)
style: topbar # One of "stacked", "sidebar", "topbar"
# background: #(optional)
#   image: /assets/img/background-img.jpg # The path/url to the image you want on the background
#   light:
#     overlay: rgba(255, 255, 255, 0.5) # Overlay for light theme
#   dark:
#     overlay: rgba(0, 0, 0, 0.5) # Overlay for dark theme

links:
#   - name: Example full entry
#     url: https://www.example.com
#     thumbnail: /assets/img/icon-topbar.png
#     description: Example description
#   - name: Example entry with url and image
#     url: https://www.example.com
#     thumbnail: /assets/img/icon-sidebar.png
#   - name: Example entry with image
#     thumbnail: /assets/img/icon-stacked.png
#   - name: Example entry with description
#     description: Example Description
#   - name: Example entry with only a name

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

social_media:
#   behance: your_username
#   dribbble: your_username
#   docker: your_username
#   facebook: your_username
#   hackerrank: your_username
#   instagram: your_username
#   keybase: your_username
#   linkedin: your_username
#   mastodon: your_username
#   medium: your_username
#   stackoverflow: your_user_id
#   telegram: your_username
#   threads: your_username
#   twitter: your_username
#   unsplash: your_username
#   vk: your_username
#   vscode: your_username
#   youtube: your_username
#   x: your_username

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

![Sidebar image](/assets/img/sidebar-preview.png)

#### [Stacked](/test/home/stacked.md)

![Stacked image](/assets/img/stacked-preview.png)

#### [Topbar](/test/home/topbar.md)

![Topbar image](/assets/img/topbar-preview.png)

#### Background

You can even change the background by adding the following to your `_config.yml` file.

```yaml
# background:
#   image: /assets/img/background-img.jpg
#   light:
#     overlay: rgba(255, 255, 255, 0.5)
#   dark:
#     overlay: rgba(0, 0, 0, 0.5)
```

[Example page](/test/page/background.md)

### Links

In the `links` section, you can add links to showcase various pages on the web or your website.

![Links](/assets/img/links.png){: .border}

```yaml
links:
  - name: Example full entry
    url: https://www.example.com
    thumbnail: /assets/img/icon-topbar.png
    description: Example description
  - name: Example entry with url and image
    url: https://www.example.com
    thumbnail: /assets/img/icon-sidebar.png
  - name: Example entry with image
    thumbnail: /assets/img/icon-stacked.png
  - name: Example entry with description
    description: Example Description
  - name: Example entry with only a name
```

### Repositories

The `repositories` section allows you to display your GitHub repositories on your page.  You can sort them by stars or latest pushes, set a limit to the number of repositories displayed, and exclude archived, forked, or specific repositories from the list

![Repositories](/assets/img/repositories.png){: .border}

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

Utilize the `social_media` section to add links to your various social media profiles.  For each platform simply provide your username or user ID to have the corresponding icon and link appear on your profile.

![Social Media](/assets/img/social-media.png){: .border}

```yaml
social_media:
  behance: your_username
  dribbble: your_username
  docker: your_username
  facebook: your_username
  hackerrank: your_username
  instagram: your_username
  keybase: your_username
  linkedin: your_username
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

![Blog](/assets/img/blog.png){: .border}

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

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/athackst/jekyll-theme-profile. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](https://www.contributor-covenant.org/) code of conduct.

See [Contributing](/CONTRIBUTING.md) for more information on contributing to this theme.

## License

The theme is available as open source under the terms of the [MIT License](https://opensource.org/license/mit/).
