---
bookCollapseSection: true
weight: 20
title: Markov Models
---

# Markov Models
## Package: 
heemod  



### maintained by: 
Kevin Zarca <kevin.zarca@gmail.com>
( https://cran.r-project.org/web/packages/heemod/heemod.pdf and https://cran.r-project.org/web/packages/heemod/index.html)  

## What does this package do?

It constructs and runs Markov models for the purpose of health economic decision analysis.  

It also has useful functions that could be used outside of a different Markov model framework. Such as Nb also has useful functions like rate_to_prob() and or_to_prob(or, p) that convert rates and odds ratios into transition probabilities. 
This package seems useful for when there are the same states across the strategy comparators.   

Further functionality was not explored currently within this exercise. However, the package description also states the package allows for deterministic and probabilistic sensitivity analysis, heterogeneity analysis, time dependency on state-time and model-time (semi-Markov and non-homogeneous Markov models).
  
  
## How do I input my data to it/what inputs does it take?  

Users directly input values into vectors that are run through different functions   

## What outputs do I get?  
In terms of cost-effectiveness analysis, run_model() gives you an R object which includes outputs like a data.frame showing expected value costs and effects for each strategy  


## Sample code 

## Other helpful resources  
- Vignettes for this package were found at:  
https://cran.r-project.org/web/packages/heemod/vignettes/a_introduction.html
- Markov Models for Health Economic Evaluations: The R Package heemod Antoine Filipovi´c-Pierucci, Kevin Zarca and Isabelle Durand-Zaleski (2017). (https://arxiv.org/pdf/1702.03252.pdf )


## Other packages to explore but not detailed here:
- DARTH : have information on github but nothing on CRAN at present.  
The packages include:
   -Darthpack (https://darth-git.github.io/darthpack/) 
   -dampack (https://github.com/DARTH-git/dampack)
- mstate (https://cran.r-project.org/web/packages/mstate/index.html)