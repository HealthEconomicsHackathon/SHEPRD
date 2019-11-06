# signpost

## Contributing

### Installation

1. clone this repo:

    `git clone git@github.com:HealthEconomicsHackathon/signpost.git`
1. install [hugo](https://gohugo.io/getting-started/installing/)
1. install blogdown from R:

    `install.packages("blogdown")`

### Workflow
1. create a new branch
    `git checkout -b my_new_branch`
1. add or update documentation (see below for details)
1. compile code locally from R with 
    `blogdown::build_site()`
1. commit and push your changes to git
1. open a pull request from your branch into master 

### Adding package documentation

All model and package documentation lives in the `content/docs` directory. This directory has a tree structure, 
e.g.

```
    state-transition-models ├── markov-models
                            |  └── _index.md
                            ├── decision-trees
                            |  └── _index.md
                            └── _index.md
```

Documentation can either be a normal 
[Markdown](https://www.markdownguide.org/cheat-sheet/) or an [RMarkdown](https://rstudio.com/wp-content/uploads/2015/02/rmarkdown-cheatsheet.pdf) document
and it must be named either `index.md` or `index.Rmd`, respectively.

### Viewing changes locally

1. if using RMarkdown, compile by running from R:

    `blogdown::build_site()`
1. serve the site locally by running from bash:

    `hugo serve`


