---
layout: page
permalink: index.html
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
# image: /assets/img/user-image.jpg # If you don't want to use your github image, set a custom one here

links:
#   - name: Example full entry
#     web_url: https://www.example.com
#     image_url: /assets/img/icon-topbar.png
#     description: Example description
#   - name: Example entry with url and image
#     web_url: https://www.example.com
#     image_url: /assets/img/icon-sidebar.png
#   - name: Example entry with image
#     image_url: /assets/img/icon-stacked.png
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
  # behance: your_username
  # dribbble: your_username
  # docker: your_username
  # facebook: your_username
  # hackerrank: your_username
  # instagram: your_username
  # keybase: your_username
  # linkedin: your_username
  # mastodon: your_username
  # medium: your_username
  # stackoverflow: your_user_id
  # telegram: your_username
  # twitter: your_username
  # unsplash: your_username
  # vk: your_username
  # vscode: your_username
  # youtube: your_username

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

#### [Sidebar](/home-sidebar.md)

![Sidebar image](/assets/img/sidebar-preview.png)

#### [Stacked](/home-stacked.md)

![Stacked image](/assets/img/stacked-preview.png)

#### [Topbar](/home-topbar.md)

![Topbar image](/assets/img/topbar-preview.png)

### Links

In the `links` section, you can add links to showcase various pages on the web or your website.

![Links](/assets/img/links.png){: .border}

```yaml
links:
  - name: Example full entry
    web_url: https://www.example.com
    image_url: /assets/img/icon-topbar.png
    description: Example description
  - name: Example entry with url and image
    web_url: https://www.example.com
    image_url: /assets/img/icon-sidebar.png
  - name: Example entry with image
    image_url: /assets/img/icon-stacked.png
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
  twitter: your_username
  unsplash: your_username
  vk: your_username
  vscode: your_username
  youtube: your_username
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

The theme is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
