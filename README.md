# SHEPRD

[![Project Status: WIP – Initial development is in progress, but there has not yet been a stable, usable release suitable for the public.](https://www.repostatus.org/badges/latest/wip.svg)](https://www.repostatus.org/#wip) [![Netlify Status](https://api.netlify.com/api/v1/badges/92f3efe9-8473-4ebd-a29d-bb9fbb93f8dc/deploy-status)](https://app.netlify.com/sites/hermes-sheprd/deploys)

## Contributing

### Installation

1. Fork this repo
1. Install [hugo](https://gohugo.io/getting-started/installing/)

### Workflow
1. Add or update content (see below for details on content templates.)
1. Open a pull request from your fork into master of this repo. Netlify will run some 
automated checks on your pull request and allow you to see a deploy preview with the changes.
1. If you are fixing an existing issue, in the pull request description please link the issue using 
keyword in the pull request description so that it will be automatically updated; see https://help.github.com/en/github/managing-your-work-on-github/linking-a-pull-request-to-an-issue#linking-a-pull-request-to-an-issue-using-a-keyword

### Adding or updating content

All model and package documentation lives in the `content/docs` directory. This directory has a tree structure, 
e.g.

```
    state-transition-models ├── markov-models
                            |  └── _index.md
                            ├── decision-trees
                            |  └── _index.md
                            └── _index.md
```

To add a new section you will first add a new directory or sub-directory, and then a new documentation page inside 
the new directory.
Documentation can either be a normal 
[Markdown](https://www.markdownguide.org/cheat-sheet/) or an [RMarkdown](https://rstudio.com/wp-content/uploads/2015/02/rmarkdown-cheatsheet.pdf) document
and it must be named either `_index.md` or `_index.Rmd`, respectively. Where possible, i.e. if your content does not 
contain any chunks of R code, use regular markdown.

All `_index.md` and `_index.Rmd` files should adhere to the templates provided in the 
[templates](https://github.com/HealthEconomicsHackathon/SHEPRD/tree/master/templates) folder.

**Important: if using an .Rmd file please knit it locally and commit both the .Rmd, the compiled .md and any 
generated files which should appear in the ./static folder** 

### Viewing changes locally

1. if using RMarkdown, knit any new .Rmd files to .md files first
     
1. serve the site locally by running from the command line:

    `hugo serve`
