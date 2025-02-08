---
title: "Custom styles"
order: 100
category: Advanced
---

## Site style

You can override any style with styles defined in `/assets/css/style.css` or `/assets/css/style.scss` files.  This is to support config based styling which needs jekyll variables.

## Page style

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
