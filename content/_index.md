---
title: Introduction
type: docs
scripts: [tree]
bookToc: false
---

# Signposting Health Economic Packages in R for Decision Modelling (SHEPRD)

This webpage aims to help you navigate you through the forest of R packages that can be used in health economics and signpost you to the most appropriate one, given your intended health economic analysis. 

This decision tree-style compendium was created over 2 days as part of a R Hackathon (6th - 7th November 2019), with work continued until 2020. The R Hackathon was organised by Dr. Nathan Green & Imperial College London (https://n8thangreen.wixsite.com/hermes-hack-london)

### Last updated April 2020.

Creators and current contributors are:
[@nichola_naylor](https://twitter.com/nichola_naylor), 
[@collepto1](https://twitter.com/collepto1), [@kd_katdavis](https://twitter.com/kd_katdavis), Arthi Vasantharoopan,[@RositsaKolarova](https://twitter.com/rositsakolarova), Monique Tan and  
 [@alexhillphd](https://twitter.com/alexhillphd)
 
By clicking on the various model subheadings, information about R packages and code available will be displayed.
This is not exhaustive but covers some of the key packages and coding literature in relation to health economic evaluation models.

This webpage is most useful for those who have some understanding or experience in R. If you are new to R, please first consult the starter mannual: Copyright (1999–2018) R Core Team, W. N. Venables, D. M. Smith and the R Core Team, "An Introduction to R. Notes on R: A Programming Environment for Data Analysis and Graphics Version 3.6.3 (2020-02-29)". Open Access: https://cran.r-project.org/doc/manuals/r-release/R-intro.pdf 

If there are any issues with the website or information presented in it, please contact Nichola Naylor - nichola.naylor@lshtm.ac.uk

Related Github repository: https://github.com/HealthEconomicsHackathon/SHEPRD 

<div id="tree"></div>


### Other work compiling packages that were used/viewed or could be useful in the future are:

* n8thangreen / health_economics_R_packages. https://github.com/n8thangreen/health_economics_R_packages [last accessed 28/02/2020]

* DARTH (2020) “Be in the Know” http://darthworkgroup.com/helpful-resources/ [last accessed 28/02/2020]

* For an overview of utilised packages by type: Jalal H, Pechlivanoglou P, Krijkamp E, Alarid-Escudero F, Enns EA, Hunink MGM. An Overview of R in Health Decision Sciences. Med Decis Mak. 2017;37(7):735-746. doi:10.1177/0272989X16686559 http://darthworkgroup.com/publications/

* For a comparison of mstate vs hesim vs heemod: Incerti D and Jansen, A COMPARISON OF R PACKAGES FOR PREDICTION AND SIMULATION OF MULTI-STATE MODELS FOR COSTEFFECTIVENESS ANALYSIS. Value in Health (2019) https://www.valueinhealthjournal.com/article/S1098-3015(19)31764-4/pdf

* This work describes a framework for R coding and health economics that could be implemented in your coding:
Alarid-Escudero, F., Krijkamp, E.M., Pechlivanoglou, P., Jalal, H., Kao, S.Y.Z., Yang, A. and Enns, E.A., 2019. A need for change! A coding framework for improving transparency in decision modeling. PharmacoEconomics, 37(11), pp.1329-1339. 

### We have split different health economic modelling approaches by ISPOR task-force classifications:

* State–Transition Models (source:  https://www.ispor.org/docs/default-source/resources/outcomes-research-guidelines-index/state-transition_modeling-3.pdf?sfvrsn=c71c04a_0)
Decision tree 
Markov
Microsimulation

* Discrete Event Simulation (source: https://www.ispor.org/docs/default-source/resources/outcomes-research-guidelines-index/modeling_using_discrete_event_simulation-4.pdf?sfvrsn=ef593594_0) 


* Dynamic Transmission Models (source: https://www.ispor.org/docs/default-source/resources/outcomes-research-guidelines-index/dynamic_transmission_modeling-5.pdf?sfvrsn=86c71849_0) 


* Parameter Uncertainty - Sensitivity Analysis (source: https://www.ispor.org/docs/default-source/resources/outcomes-research-guidelines-index/model_parameter_estimation_and_uncertainty-6.pdf?sfvrsn=8bc10c8e_0) 


* Parameter Uncertainty - Value of Information Analysis (source: https://www.ispor.org/heor-resources/good-practices-for-outcomes-research/article/value-of-information-analysis-for-research-decisions-an-introduction)

## Who we are

Dr. Nichola R. Naylor - Nichola is a health economist currently funded through a collaboration between the London School of Hygiene & Tropical Medicine and the International Livestock Research Institute called ‘Agriculture for Nutrition and Health’, funded by the Consultative Group on International Agricultural Research. 
Nichola led this project, sourced relevant information and wrote package summaries throughout the hackathon and update (2020) sessions. 

Collette Taylor - Collette is a PhD student at the Royal Veterinary College, with the project co-sponsored by BBSRC and MSD in veterinary epidemiology and economics. 
Collette sourced relevant information and wrote package summaries throughout the hackathon and update (2020) sessions. 

Katherine Davis - Katherine is a PhD student at Imperial College London, with Wellcome Trust funding a four year PhD training programme in Epidemiology, Evolution and Control of Infectious Diseases. 
Katherine sourced relevant information and wrote package summaries throughout the hackathon and update (2020) sessions. 

Arthi Vasantharoopan  - Arthi is a PhD student in health economics at the London School of Hygiene and Tropical Medicine as part of The Bridging the GAP in HIV testing and care for Children in Zimbabwe (B-GAP), which is jointly funded by the UK Medical Research Council (MRC) and the UK Department for International Development (DFID). 
Arthi sourced relevant information and wrote package summaries throughout the hackathon and update (2020) sessions. 

Dr. Rosita Koleva-Kolarova - Rosita works on a Horizon2020 funded project called HEcoPerMed (Health Economics for Personalised Medicine) at the Nuffield Department of Population Health, University of Oxford. 
Rosita sourced relevant information and wrote package summaries throughout the hackathon.

Monique Tan - Monique is a PhD student working on the nutrition and international health within Action on Salt China, a project funded by the  National Institute for Health Research. 
Monique sourced relevant information and wrote package summaries throughout the hackathon.

Dr. Alex Hill - Alex is a professional software engineer employed by the MRC Centre for Outbreak Analysis and Modelling, at Imperial College London. 
Alex set up the Github repository, organised the structure of the webpage code and set up (and updated) the SHEPRD webpage throughout the hackathon and update (2020) sessions. 


<script src="https://d3js.org/d3.v5.min.js"></script>