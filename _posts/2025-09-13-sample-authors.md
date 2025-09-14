---
layout: post
title: Sample authors post
subtitle: This post shows how to use multiple authors
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

To add authors to a post, simply add the `authors` key to the front matter.

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
