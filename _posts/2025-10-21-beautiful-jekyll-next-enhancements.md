---
layout: post
title: Beautiful Jekyll Next Enhancements
subtitle: This post shows how to use the enhancements in Beautiful Jekyll Next
readtime: true
gh-repo: LizardByte/beautiful-jekyll-next
gh-badge: [star, fork, follow]
tags: [test]
comments: true
authors:
  - name: AwesomeGitHubUser
    github: octocat
  - github: LizardByte-bot
  - name: George Washington
---

## Theme Switcher

Beautiful Jekyll Next includes a built-in theme switcher that allows visitors to toggle between light and dark themes,
or automatically follow their system preference.

### Enabling the Theme Switcher

Add this to your `_config.yml`:

```yaml
theme-switcher: true
```

### Theme Switcher Styles

The theme switcher supports two styles:

**Button Mode (Default)** - A single button that cycles through themes with each click:
```yaml
theme-switcher-style: 'button'  # Cycles: Auto → Light → Dark → Auto
```

**Dropdown Mode** - A dropdown menu with all theme options visible:
```yaml
theme-switcher-style: 'dropdown'  # Shows menu with Light, Dark, and Auto options
```

### Customizing Colors

You can customize the colors for both light and dark themes in your `_config.yml`:

```yaml
# Light theme colors
page-col: "#FFFFFF"
text-col: "#404040"
link-col: "#008AFF"
hover-col: "#0085A1"
navbar-col: "#EAEAEA"
navbar-text-col: "#404040"
navbar-border-col: "#DDDDDD"
footer-col: "#EAEAEA"
footer-text-col: "#777777"
footer-link-col: "#404040"
footer-hover-col: "#0085A1"

# Dark theme colors
dark-page-col: "#1a1a1a"
dark-text-col: "#e0e0e0"
dark-link-col: "#4d9fff"
dark-hover-col: "#66b3ff"
dark-navbar-col: "#2d2d2d"
dark-navbar-text-col: "#e0e0e0"
dark-navbar-border-col: "#404040"
dark-footer-col: "#2d2d2d"
dark-footer-text-col: "#b0b0b0"
dark-footer-link-col: "#e0e0e0"
dark-footer-hover-col: "#66b3ff"
```

### Customizing Syntax Highlighting

You can choose from dozens of Pygments themes for code syntax highlighting. Configure separate themes for light and dark modes:

```yaml
# Light theme syntax highlighting (default: beautiful-jekyll-og)
pygments-theme-light: "beautiful-jekyll-og"

# Dark theme syntax highlighting (default: beautiful-jekyll-og)
pygments-theme-dark: "beautiful-jekyll-og"
```

**Popular combinations:**

GitHub style:
```yaml
pygments-theme-light: "pygments-styles/github-light-default"
pygments-theme-dark: "pygments-styles/github-dark-dimmed"
```

VS Code style:
```yaml
pygments-theme-light: "pygments-styles/light-plus"
pygments-theme-dark: "pygments-styles/dark-plus"
```

Gruvbox style:
```yaml
pygments-theme-light: "pygments/gruvbox-light"
pygments-theme-dark: "pygments/gruvbox-dark"
```

### How It Works

- The theme switcher button appears in the navigation bar
- In **button mode**, click to cycle through: Auto → Light → Dark → Auto
- In **dropdown mode**, click to open a menu and select your preferred theme
- Your choice is saved and persists across browsing sessions
- In Auto mode, the theme automatically matches your system/browser preference
- The theme is applied before the page renders (no flash of wrong theme)
- Code syntax highlighting automatically adapts to the selected theme

## Authors

To add authors to a post, add the `authors` key to the front matter.

Each author can have a `name` and/or a `github` username. If you provide the GitHub username, we will fetch the avatar
from GitHub. If you do not provide a name, we will use the GitHub username as the name. If you do not provide a
GitHub username, no avatar will be shown.

### Example

```yaml
authors:
  - name: AwesomeGitHubUser
    github: octocat  # add github to get the avatar to appear
  - github: LizardByte-bot  # if name is not given, we will show the github name
  - name: George Washington  # if no github, then no avatar will be shown
```

## Amazon Products

To show Amazon products in your blog posts, set the `amazon_products.enabled` option to true in the `config.yml`.
It is enabled by default, you can disable it by setting it to `false`. Be sure to set the `amazon_products.affiliate_tag`
to a tag you have associated with your Amazon affiliate account.

You can disable Amazon products for a specific post by adding `amazon_products: false` to the post's front matter.

### Filtering Products by Tags

Products are automatically filtered based on your post's tags. If a post has tags that match any of the product tags
in `_data/amazon_products.yml`, only matching products will be shown. If no products match, all products will be shown
as a fallback.

You can also use a custom set of tags for product filtering by adding `amazon_tags` to your post's front matter.
This allows you to control which products appear without affecting your post's actual tags.

### Config Example:

```yaml
amazon_products:
  enabled: true
  affiliate_tag: my-amazon-tag-20
```

### Disable for a Specific Post:

```yaml
---
title: My Post
amazon_products: false
---
```

### Filter Products by Post Tags:

```yaml
---
title: Gaming PC Build Guide
tags: [gaming, gpu, cpu]  # Will show products tagged with gaming, gpu, or cpu
---
```

### Use Custom Tags for Product Filtering:

```yaml
---
title: My Streaming Setup
tags: [blog, tutorial]  # Post tags for categorization
amazon_tags: [streaming, audio, accessories]  # Use these tags to filter products instead
---
```

### Adding Products to `_data/amazon_products.yml`:

```yaml
- title: "Product Name from Amazon"  # Copy the full product title from Amazon
  image: "https://m.media-amazon.com/images/I/..."  # Product image URL
  link: "https://www.amazon.com/dp/PRODUCTID"  # Product link (affiliate tag added automatically)
  tags:
    - gaming
    - gpu
    - computer hardware
```
