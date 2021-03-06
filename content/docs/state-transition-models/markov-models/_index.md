# Markov Models

A comparison of some of the main Markov model packages from:

*	Incerti D and Jansen, A COMPARISON OF R PACKAGES FOR PREDICTION AND SIMULATION OF MULTI-STATE MODELS FOR COSTEFFECTIVENESS ANALYSIS. Value in Health (2019) https://www.valueinhealthjournal.com/article/S1098-3015(19)31764-4/pdf 

And information from other sources such as: For an overview of utilised packages by type: Jalal H, Pechlivanoglou 

* P, Krijkamp E, Alarid-Escudero F, Enns EA, Hunink MGM. An Overview of R in Health Decision Sciences. Med Decis Mak. 2017;37(7):735-746. doi:10.1177/0272989X16686559 http://darthworkgroup.com/publications/

### mstate 
https://cran.r-project.org/web/packages/mstate/index.html

* For the analysis of competing risks and multi-State models. Covers all steps of the analysis of multi-state models, from model building and data preparation to estimation and graphical representation of the results. It can be applied to non- and semi-parametric (Cox) models. The package is also suitable for competing risks models, as they are a special category of multi-state models.https://www.jstatsoft.org/article/view/v038i07 
* supports both cohort- and individual-level models
* heterogeniety: designed to simulate a single covariate profile at a time
* does not have probablistic (PSA) function
* integrated with flexible survival models (e.g., parametric, splines, fractional polynomials, Cox regression)
* in continuous time
* NOT integrated with cost-effectiveness analyses
* See mstate vignettes& Manuals - https://cran.r-project.org/web/packages/mstate/vignettes/Tutorial.pdf 
https://cran.r-project.org/web/packages/mstate/index.html 
* Multistate models for estimating competing risks (E.g. in-hospital mortality): https://cran.r-project.org/web/packages/survival/vignettes/compete.pdf 

### hesim
https://cran.r-project.org/web/packages/hesim/

* For health economic simulation modeling and decision analysis that provides a general framework for integrating statistical analyses with economic evaluation. https://hesim-dev.github.io/hesim/
* fastest(eg could simulate a parametric individual-level “clock reset” multi-state model with 1,000 patients and 100 PSA iterations thousands of times faster than mstate)
* cohort-level models still under development, focus on individual population models
* heterogeniety: can be run for a population of heterogeneous patients
* natively supports PSA
* integrated with flexible survival models (e.g., parametric, splines, fractional polynomials, Cox regression)
* in continuous time
* has functions that can be used to directly perform cost-effectiveness analyses and represent decision uncertainty
* See - https://cran.r-project.org/web/packages/hesim/vignettes/intro.html
For continuous time state transition models - https://cran.r-project.org/web/packages/hesim/vignettes/ctstm.html
* Returns table of ICER values (see "intro" Vignette linked above)
* Useful if have datasets on epidemiological and cost data so can intergrate data analyses (such as survival analysis for disease pregression and regression analyses for costs) with health economic decision analysis. However, you can also just state the input values you want to use. 



### heemod
https://cran.r-project.org/web/packages/heemod/index.html

* For Markov models implementing most of the modelling and reporting features described in reference textbooks and guidelines: deterministic and probabilistic sensitivity analysis, heterogeneity analysis, time dependency on state-time and model-time (semi-Markov and non-homogeneous Markov models), etc.) https://arxiv.org/pdf/1702.03252.pdf 
* supports both cohort- and individual-level models
* heterogeniety: can be run for a population of heterogeneous patients
* natively supports PSA
* NOT easily integrated with flexible survival models
* in discrete time
* has functions that can be used to directly perform cost-effectiveness analyses and represent decision uncertainty
* more detail below



## Package: heemod  

### Maintained by
Kevin Zarca <kevin.zarca@gmail.com>
( https://cran.r-project.org/web/packages/heemod/heemod.pdf and https://cran.r-project.org/web/packages/heemod/index.html)  

## What does this package do?

It constructs and runs Markov models for the purpose of health economic decision analysis.  

It also has useful functions that could be used outside of a different Markov model framework. Such as Nb also has useful functions like rate_to_prob() and or_to_prob(or, p) that convert rates and odds ratios into transition probabilities. 
This package seems useful for when there are the same states across the strategy comparators.   

Further functionality was not explored currently within this exercise. However, the package description also states the package allows for deterministic and probabilistic sensitivity analysis, heterogeneity analysis, time dependency on state-time and model-time (semi-Markov and non-homogeneous Markov models).
  
  
## How do I input my data to it/what inputs does it take?  

Users directly input values into vectors that are run through different functions   
https://cran.r-project.org/web/packages/heemod/vignettes/a_introduction.html

Directly input values into vectors that are run through different functions 
* TRANSITION PROBABILITIES
With a matrix, using define_transition()

* STATE VALUES
For each state, define values using define_state()

Good for when there are the same states across the comparison strategies - “strategies should have the same states and state value names. “ (from heemod manual - https://cran.r-project.org/web/packages/heemod/heemod.pdf)


## What outputs do I get?  
In terms of cost-effectiveness analysis, run_model() gives you an R object which includes outputs like a data.frame showing expected value costs and effects for each strategy  

run_model() gives you an R object which includes outputs like a data.frame showing expected value costs and effects for each strategy

 
| cost          | life.years| n_indiv | strategy_names | 
| ------------- |:---------:|:-------:| -------------: |
| 383186.2      | 676.0202  | 100     |I               |
| 573229.5      | 870.4081  | 100     |II              |

## Sample code 
See work under "Vignettes" on the following CRAN link- https://cran.r-project.org/web/packages/heemod/index.html 

## Other helpful resources  
- Vignettes for this package were found at:  
https://cran.r-project.org/web/packages/heemod/vignettes/a_introduction.html
- Markov Models for Health Economic Evaluations: The R Package heemod Antoine Filipovi´c-Pierucci, Kevin Zarca and Isabelle Durand-Zaleski (2017). (https://arxiv.org/pdf/1702.03252.pdf )


## Other packages
- DARTH : 
The packages include:
   -Darthpack (https://darth-git.github.io/darthpack/) 
   -dampack (https://github.com/DARTH-git/dampack)