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
