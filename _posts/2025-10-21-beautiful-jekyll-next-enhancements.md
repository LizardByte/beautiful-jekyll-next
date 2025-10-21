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
It is enabled by default, you disable it by setting it to `false`. Be sure to set the `amazon_products.affiliate_tag`
to a tag you have associated with your store.

You can disable Amazon products for a specific post by adding `amazon_products: false` to the post's front matter.

### Config Example:

```yaml
amazon_products:
  enabled: true
  affiliate_tag: my-amazon-tag 
```

### Post Example:

```yaml
amazon_products: false
```
