---
title: Post Timeline
category: includes
order: 13
---

This include file generates a timeline of posts with an optional "View all" link at the end. It's designed to be flexible and customizable through various parameters.

## Usage

To use this include in your Jekyll theme, add the following line to your template:

```liquid
{% include post-timeline.html %}
```

## Parameters

You can customize the behavior of this include by passing the following parameters:

| Parameter | Default | Description |
|-----------|---------|-------------|
| `collection` | Required | The collection of posts to display |
| `collection_permalink` | `:name` | The permalink structure for individual collection pages |
| `replace_value` | `:name` | The value to replace in the `collection_permalink` with the section slug |
| `post_limit` | nil | Number of posts to display per section |
Example with parameters:

```liquid
{% include post-timeline.html collection=site.articles post_limit=5 %}
```

## Functionality

1. The include sets up initial variables based on the provided parameters or default values.
2. It creates a container for the timeline posts.
3. It iterates through the specified collection (limited by `post_limit` if set) and includes a `post-timeline-card.html` for each post.
4. If there are more posts in the collection than the displayed limit, it adds a "View all" link at the bottom.

## Dependencies

This include file depends on:

1. `post-timeline-card.html`: Another include file that should define how each post card is displayed.
2. Octicons: The GitHub icon set, used for the chevron-right icon in the "View all" link.

## Customization

To customize the appearance of the timeline:

1. Modify the CSS classes in this file to change the layout and spacing.
2. Edit the `post-timeline-card.html` include to change how individual posts are displayed.
3. Adjust the "View all" link text and styling as needed.

## Notes

- Ensure that the `collection_permalink` variable is defined before using this include if you're using the "View all" functionality.
- The `relative_url` filter is used for the "View all" link, which is a Jekyll filter for generating correct URLs in different site configurations.
