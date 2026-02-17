<div align="center">
  <img src="banner.png" />
  <h1 align="center">Beautiful Jekyll Next</h1>
  <h4 align="center">Create a beautiful website.</h4>
</div>

<div align="center">
  <a href="https://github.com/LizardByte/beautiful-jekyll-next"><img src="https://img.shields.io/github/stars/lizardbyte/beautiful-jekyll-next.svg?logo=github&style=for-the-badge" alt="GitHub stars"></a>
  <a href="https://github.com/LizardByte/beautiful-jekyll-next/actions/workflows/ci.yml?query=branch%3Amaster"><img src="https://img.shields.io/github/actions/workflow/status/lizardbyte/beautiful-jekyll-next/ci.yml.svg?branch=master&label=CI%20build&logo=github&style=for-the-badge" alt="GitHub Workflow Status (CI)"></a>
</div>

## Demos:

- [LizardByte](https://app.lizardbyte.dev/)
- [LizardByte/beautiful-jekyll-next](https://app.lizardbyte.dev/beautiful-jekyll-next/)
- [LizardByte/Sunshine](https://app.lizardbyte.dev/Sunshine/)

**Beautiful Jekyll Next** is a ready-to-use template to help you create a beautiful website quickly.
Perfect for personal sites, blogs, or simple project websites.

This is a fork of [Beautiful Jekyll](https://github.com/daattali/beautiful-jekyll), with customizations to make it more
suitable for my needs such as the following:

- Newer version of Bootstrap
- Added author avatars for blog posts
- Allow custom styling for giscus comments
- Added optional hit counter for blog posts
- Added different styles for GitHub badges on blog posts
- Pull Request builds can be previewed before merging, making it easier to review changes between versions
- Display Amazon products with affiliate links at the end of blog posts
- Theme switcher

For a full list of differences, see https://github.com/daattali/beautiful-jekyll/compare/master...LizardByte:master

## Table of contents

- [Features](#features)
- [Usage](#usage)
- [Add your own content](#add-your-own-content)
- [Customizing parameters for each page](#customizing-parameters-for-each-page)
- [Supported parameters](#supported-parameters)
- [Next steps](#next-steps)
- [Credits](#credits)

# Features

- **SIMPLE**: The primary goal of Beautiful Jekyll Next is to allow *anyone* to create a website in a few minutes.
- **Modern**: Uses the latest best practices and technologies to achieve nearly perfect scores on Google Chrome's Audit.
- **Mobile-first**: Designed to look great on both large-screen and small-screen (mobile) devices.
- **Highly customizable**: Many personalization settings such as changing the background color/image, adding a logo.
- **Theme switcher**: Built-in light/dark theme switcher with auto mode that respects system preferences.
- **Flexible usage**: Use Beautiful Jekyll Next directly on GitHub or via a Ruby gem. (TODO: create a Ruby gem)
- **SEO and social media support**: Customize how your site looks on Google and when shared on social media.
- **Comments support**: Add comments to any page using either
  [Disqus](https://disqus.com/),
  [Facebook comments](https://developers.facebook.com/docs/plugins/comments),
  [Utterances](https://utteranc.es/),
  [Staticman](https://staticman.net),
  [giscus](https://giscus.app),
  or [CommentBox](https://commentbox.io/).
- **Tags**: Any blog post can be tagged with keywords, and an index page is automatically generated.
- **Analytics**: Integrate Google Analytics, or other analytics platforms, to track visits to your website.
- **Search**: Let users easily find any page using a Search button in the navigation bar.
- **Photos support**: Any page can have a full-width cover photo and thumbnail.
- **RSS**: An RSS feed is automatically created, so you can even host a podcast easily with Beautiful Jekyll Next.

# Usage

First, read through GitHub's
[documentation](https://docs.github.com/en/pages/setting-up-a-github-pages-site-with-jekyll/adding-a-theme-to-your-github-pages-site-using-jekyll)

This theme is recommended to be installed as a remote theme, so you can easily update it in the future.

## Latest
```yaml
remote_theme: LizardByte/beautiful-jekyll-next
```

## Specific branch, commit, or tag
```yaml
remote_theme: LizardByte/beautiful-jekyll-next@master
```

# Add your own content

To add pages to your site, you can either write a Markdown file (`.md`) or you can write an HTML file.
It's much easier to write Markdown than HTML,
so that's the recommended approach ([here's a great tutorial](https://markdowntutorial.com/)
if you need to learn Markdown in 5 minutes).

To see an example of a Markdown file, click on any file that ends in `.md`, for example [`aboutme.md`](../aboutme.md).
On that page you can see some nicely formatted text (there's a word in bold, a link, a few bullet points).
If you click on the `code` button, you'll see the Markdown code that generated the pretty text.

In contrast, look at [`tags.html`](../tags.html). That's how you write HTML... not as pretty.
So stick with Markdown if you don't know HTML.

Any Markdown or HTML file that you create will be available on your website under
`https://<yourusername>.github.io/<pagename>`. For example, if you create a file `about.md` (or `about.html`)
then it'll exist at `https://<yourusername>.github.io/about`.

Files you create inside the [`_posts`](../_posts) directory will be treated as blog entries.
You can look at the existing files there to get an idea of how to write blog posts.
Note the format of the blog post files... they must follow the naming convention of `YEAR-MONTH-DAY-title.md`.

# Customizing parameters for each page

**One last important thing**: To have your new pages use this template and not just be plain HTML pages,
**you must add [YAML front matter](https://jekyllrb.com/docs/front-matter/) to the top of each page**:


```
---
---
```

This is where you'll be able to give each page some extra parameters
(such as a title, a subtitle, an image, etc. - [below is a list of all parameters](#supported-parameters)).
Add any parameters you want between these two dashed lines, for example:

```
---
title: Contact me
subtitle: Here you'll find all the ways to get in touch with me
---
```

If you don't want to use any parameters on a page, you still need to use the two dashed lines.
If you don't, then your file will be shown as-is without the Beautiful Jekyll Next template.

You can look at the top of
[`aboutme.md`](../aboutme.md) as an example.

**Important takeaway: ALWAYS add the YAML front matter, which is two lines of three dashes, to EVERY page.
If you have any parameters, they go between the two lines.**

# Supported parameters

Below is a list of the parameters that Beautiful Jekyll Next supports
(any of these can be added to the YAML front matter of any page). Remember to also look in the `_config.yml` file to
see additional site-wide settings. If there's a parameter that you want to apply to the entire site instead of one
specific page, check out [this FAQ answer](https://beautifuljekyll.com/faq/#default-params).

## Main parameters

These are the basic YAML parameters that you are most likely to use on most pages.

| Parameter     | Description                                                                                                                                                                                                                                                                                                                                                                                                          |
|---------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| title         | Page or blog post title                                                                                                                                                                                                                                                                                                                                                                                              |
| subtitle      | Short description of page or blog post that goes under the title                                                                                                                                                                                                                                                                                                                                                     |
| tags          | List of tags to categorize the post. Separate the tags with commas and place them inside square brackets. Example: `[personal, analysis, finance]`                                                                                                                                                                                                                                                                   |
| cover-img     | Include a large full-width image at the top of the page. You can either provide the path to a single image (eg. `"/path/to/img"`) , or a list of images to cycle through (eg. `["/path/img1", "/path/img2"]`). If you want to add a caption to an image, then you must use the list notation (use `[]` even if you have only one image), and each image should be provided as `"/path/to/img" : "Caption of image"`. |
| thumbnail-img | For blog posts, if you want to add a thumbnail that will show up in the feed, use `thumbnail-img: /path/to/image`. If no thumbnail is provided, then `cover-img` will be used as the thumbnail. You can use `thumbnail-img: ""` to disable a thumbnail.                                                                                                                                                              |
| comments      | If you want do add comments to a specific page, use `comments: true`. Comments only work if you enable one of the comments providers (Facebook, disqus, staticman, utterances, giscus, CommentBox) in `_config.yml` file. Comments are automatically enabled on blog posts but not on other pages; to turn comments off for a specific post, use `comments: false`.                                                  |
| mathjax       | If you want to use LaTeX formulas, you need to enable MathJax. Note that in MathJax you need to use `$$` and `\\(` to start and end expressions                                                                                                                                                                                                                                                                      |

## Parameters for SEO and social media sharing

These parameters let you control what information shows up when a page is shown in a search engine (such as Google)
or gets shared on social media (such as Twitter/Facebook).

| Parameter         | Description                                                                                                                                          |
|-------------------|------------------------------------------------------------------------------------------------------------------------------------------------------|
| share-title       | A title for the page. If not provided, then `title` will be used, and if that's missing then the site title (from `_config.yml`) is used.            |
| share-description | A brief description of the page. If not provided, then `subtitle` will be used, and if that's missing then an excerpt from the page content is used. |
| share-img         | The image to show. If not provided, then `cover-img` or `thumbnail-img` will be used if one of them is provided.                                     |

## Less commonly used parameters

These are parameters that you may not use often, but can come in handy sometimes.

| Parameter    | Description                                                                                                                                                                                                   |
|--------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| author       | Specify the author of a blog post (useful if a website has multiple authors).                                                                                                                                 |
| readtime     | If you want a post to show how many minutes it will take to read it, use `readtime: true`.                                                                                                                    |
| show-avatar  | If you have an avatar configured in the `_config.yml` but you want to turn it off on a specific page, use `show-avatar: false`.                                                                               |
| social-share | By default, every blog post has buttons to share the page on social media. If you want to turn this feature off, use `social-share: false`.                                                                   |
| nav-short    | By default, the navigation bar gets shorter after scrolling down the page. If you want the navigation bar to always be short on a certain page, use `nav-short: true`                                         |
| gh-repo      | If you want to show GitHub buttons at the top of a post, this sets the GitHub repo name (eg. `LizardByte/beautiful-jekyll-next`). You must also use the `gh-badge` parameter to specify what buttons to show. |
| gh-badge     | Select which GitHub buttons to display. Available options are: [star, watch, fork, follow]. You must also use the `gh-repo` parameter to specify the GitHub repo.                                             |
| last-updated | If you want to show that a blog post was updated after it was originally released, you can specify an "Updated on" date.                                                                                      |
| layout       | What type of page this is (default is `post` for blog posts and `page` for other pages). See _Page types_ section below for more information.                                                                 |

## Advanced parameters

These are advanced parameters that are only useful for people who need very fine control over their website.

| Parameter      | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
|----------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| theme-switcher | Enable or disable the theme switcher button in the navbar. Set to `true` to show the theme switcher, or `false` to hide it. When enabled, users can toggle between light, dark, and auto (system preference) themes.                                                                                                                                                                                                                                                       |
| footer-extra   | If you want to include extra content below the social media icons in the footer, create an HTML file in the `_includes/` folder (for example `_includes/myinfo.html`) and set `footer-extra` to the name of the file (for example `footer-extra: myinfo.html`). Accepts a single file or a list of files.                                                                                                                                                                  |
| before-content | Similar to `footer-extra`, but used for including HTML before the main content of the page (below the title).                                                                                                                                                                                                                                                                                                                                                              |
| after-content  | Similar to `footer-extra`, but used for including HTML after the main content of the page (above the footer).                                                                                                                                                                                                                                                                                                                                                              |
| head-extra     | Similar to `footer-extra`, but used if you have any HTML code that needs to be included in the `<head>` tag of the page.                                                                                                                                                                                                                                                                                                                                                   |
| language       | HTML language code to be set on the page's &lt;html&gt; element.                                                                                                                                                                                                                                                                                                                                                                                                           |
| full-width     | By default, page content is constrained to a standard width. Use `full-width: true` to allow the content to span the entire width of the window.                                                                                                                                                                                                                                                                                                                           |
| js             | List of local JavaScript files to include in the page (eg. `/assets/js/mypage.js`)                                                                                                                                                                                                                                                                                                                                                                                         |
| ext-js         | List of external JavaScript files to include in the page (eg. `//cdnjs.cloudflare.com/ajax/libs/underscore.js/1.8.2/underscore-min.js`). External JavaScript files that support [Subresource Integrity (SRI)](https://developer.mozilla.org/en-US/docs/Web/Security/Subresource_Integrity) can be specified using the `href` and `sri` parameters eg.<br/>`href: "//code.jquery.com/jquery-3.1.1.min.js"`<br/>`sri: "sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8="` |
| css            | List of local CSS files to include in the page                                                                                                                                                                                                                                                                                                                                                                                                                             |
| ext-css        | List of external CSS files to include in the page. External CSS files using SRI (see `ext-js` parameter) are also supported.                                                                                                                                                                                                                                                                                                                                               |

## Page types

- **post**: To write a blog post, add a markdown or HTML file in the `_posts` folder.
  As long as you give it YAML front matter (the two lines of three dashes), it will automatically be rendered like a
  blog post. Look at the existing blog post files to see examples of how to use YAML parameters in blog posts.
- **page**: Any page outside the `_posts` folder that uses YAML front matter will have a very similar style to blog
  posts.
- **home**: The home layout is meant to act as the homepage of your blog posts... it will display all your blog posts,
  sorted from newest to oldest. A file using the `home` layout must be named `index.html`
  (not `index.md` or anything else!).
- **minimal**: If you want to create a page with minimal styling (i.e., without the bulky navigation bar and footer),
  assign `layout: minimal` to the YAML front matter.
- If you want to completely bypass the template engine and write your own HTML page, simply omit the YAML front matter.
  Only do this if you know how to write HTML!

# Next steps

Congratulations on making it this far! You now have all the tools to easily build a beautiful website for free.

- After you get comfortable with the basics of writing in Markdown, I suggest taking a look at this
  [sample post](https://app.lizardbyte.dev/beautiful-jekyll-next/2020-02-28-sample-markdown/) and
  [the code that created it](https://raw.githubusercontent.com/LizardByte/beautiful-jekyll-next/master/_posts/2020-02-28-sample-markdown.md)
  to learn some more advanced tips about Markdown.

- Since this is a fork of Beautiful Jekyll, you may want to check out [Beautiful-Jekyll](https://beautifuljekyll.com)
  to learn more about the features of Beautiful Jekyll.

- Remember that Beautiful Jekyll Next is built on top of Jekyll.
  This means that reading through the [Jekyll documentation](https://jekyllrb.com/) will introduce you to many more
  features that you might find useful!

# Credits

Thanks to [Dean Attali](https://github.com/daattali) for creating the original Beautiful Jekyll
and to all the other contributors who made this project possible.
