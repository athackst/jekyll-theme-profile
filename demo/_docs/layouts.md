---
title: "Theme layouts"
category: layouts
order: 2
---

Layouts in Jekyll define the structure and appearance of pages, allowing for consistent design across your site while accommodating different content types. Below, you'll find examples of each layout, along with configuration details and usage instructions.

{%- assign layout_collection = site.docs | where:"category","layouts" %}
{%- for post in layout_collection %}
{%- unless post.url == page.url %}
{%- include post-tease-text-card.html %}
{%- endunless %}
{%- endfor %}
