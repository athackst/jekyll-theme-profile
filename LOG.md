## 11/25/2023

### Use github-pages gem for rates

For some reason the github pages gem uses far _far_ less calls to the github api than if I just use github_metadata_plugin.  I don't know why.

Found it.

- The [issue](https://github.com/jekyll/github-metadata/issues/266)
- The offending PRS
    - [#224](https://github.com/jekyll/github-metadata/pull/224)
    - [#234](https://github.com/jekyll/github-metadata/pull/234)

The solution:
Pin the jekyll-metadata-plugin to 2.13.0

```
gem 'jekyll-github-metadata', '= 2.13.0' # Needed to rate limit API calls.
```

## 11/25/2023

### Full links in readme

The readme is used in the gem file and they host their own documentation.  All images and links therefore must use full paths.

### Remove Gemfile.lock

By removing Gemfile.lock, we are able to test this theme against many versions of ruby/jekyll/etc.  Including the lock makes it too hard to get the right dependency versions.

### Including plugins in the theme

Initially, I thought it would be a good idea to include some default plugins with the theme.  Especially for plugins that required a specific layout like `jekyll-pagination` and `jekyll-tagging`.

However, pulling this in as a user seems problematic.  Despite trying to include the pagination index in "assets" so that it's bundled with the theme, it isn't accessible to the site at build time for the user because it's in the host theme directory.

It also limits the type of plugins that a user can use, since it creates more  dependencies. For example, if I ship with `jekyll-pagination`, it not only has issues building my site as a user of the theme, it also prevents me from using `jekyll-pagination-v2` which is preferred for jekyll+3 (not supported by github pages).

I have therefore decided that it's best to not ship with these plugins and instead require the user to set them up if desired.  However, layouts will be shipped that they can use, and certain snippets will be guarded by having the appropriate settings in config before being included.

## 11/11/2023

### Assigns don't work between layouts.

Setting a variable via `{% assign var = value %}` will assign that variable in that layout and any includes from that layout, but doesn't seem to propagate to other layouts.

For example, if another layout has the frontmatter

```yaml
layout: default
```

You might expect that all of the variables would be available for any {% raw %}`{% include ..%}`{% endraw %} that you might have within your new layout.  They are not.

However, variables assigned inside of the includes are maintained.

**Decision**

Place variables as close to the source as possible (assign what you use) even if you have to repeat the same variable multiple times.

There is the risk that these variables might become decoupled, especially when you desire to update some more "global" type such as title.

For these more global variables, attempt to capture them in the config.
