# Shiny Applications

## Introduction

Health economic evaluation models have traditionally been built in Microsoft Excel, but more sophisticated tools are increasingly being used as model complexity and computational requirements increase. Of all the programming languages, R is most popular amongst health economists because it has a plethora of user created packages and is highly flexible. However, even with an integrated development environment such as R Studio, R lacks a simple point and click user interface and therefore requires some programming ability. This might make the switch from Microsoft Excel to R seem daunting, and it might make it difficult to directly communicate results with decisions makers and other stakeholders.

The R package Shiny has the potential to resolve this limitation. It allows programmers to embed health economic models developed in R into interactive web browser based user interfaces. Users can specify their own assumptions about model parameters and run different scenario analyses, which, in the case of regular a Markov model, can be computed within seconds. 


## When might I use this?

Shiny applications may be particularly useful... 

* to experiment with and to reflect on different scenarios and test the validity/plausibility model of inputs and outputs.
* in areas where one health economic decision model is applied in range of circumstances (e.g. in public health, models are often built to be used in a number of different countries). 
* when the full model source code can or may not be shared (e.g. for proprietary or privacy reasons). 
* to engage with stakeholders and decision makers, who would otherwise not be able to interact directly with statistical computer models. 
 
## Resources

### Advanced shiny app and source code for a fast, time-dependant 3-State Markov model

* **Shiny Application**:
[https://darkpeakanalytics.shinyapps.io/sadm-mk2/](https://darkpeakanalytics.shinyapps.io/sadm-mk2/)

* **Source code**:
[https://github.com/bitowaqr/sadm-mk2](https://github.com/bitowaqr/sadm-mk2)


### Tutorial: building a simple shiny app for a 4-State Markov model


* **Paper**: Smith R, Schneider P. Making health economic models Shiny: A tutorial. Wellcome Open Research. 2020 Apr 14;5(69):69. [https://wellcomeopenresearch.org/articles/5-69](https://wellcomeopenresearch.org/articles/5-69)

* **Shiny Application**: [https://robertasmith.shinyapps.io/sick_sicker/](https://robertasmith.shinyapps.io/sick_sicker/)
	
* **Github Repoitory:** [https://github.com/RobertASmith/healthecon_shiny](https://github.com/RobertASmith/healthecon_shiny)	
	
	

### Bresmed’s ‘IntRface’ application 

* **Paper**: Hart R, Burns D, Ramaekers B, Ren S, Gladwell D, Sullivan W, Davison N, Saunders O, Sly I, Cain T, Lee D. R and Shiny for Cost-Effectiveness Analyses: Why and When? A Hypothetical Case Study. PharmacoEconomics. 2020 Mar 31. [https://link.springer.com/article/10.1007/s40273-020-00903-9](https://link.springer.com/article/10.1007/s40273-020-00903-9)
* **Shiny app**: [https://bresmed-intrface-hypothetical-car-t-model.shinyapps.io/IntRface_Model-PharmacoEconomics/](https://bresmed-intrface-hypothetical-car-t-model.shinyapps.io/IntRface_Model-PharmacoEconomics/)

### SHARP CKD-CVD

* **Paper**: Schlackow I, Kent S, Herrington W, Emberson J, Haynes R, Reith C, Wanner C, Fellström B, Gray A, Landray MJ, Baigent C. A policy model of cardiovascular disease in moderate-to-advanced chronic kidney disease. Heart. 2017 Dec 1;103(23):1880-90. [https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5749372/](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5749372/)
* **Shiny app**: [http://dismod.ndph.ox.ac.uk/kidneymodel/app/](ttp://dismod.ndph.ox.ac.uk/kidneymodel/app/)


### IVI-RA Value Tool


* **Paper**: Incerti D, Curtis JR, Shafrin J, Lakdawalla DN, Jansen JP. A flexible open-source decision model for value assessment of biologic treatment for rheumatoid arthritis. Pharmacoeconomics. 2019 Jun 1;37(6):829-43. [https://link.springer.com/article/10.1007%2Fs40273-018-00765-2](https://link.springer.com/article/10.1007%2Fs40273-018-00765-2)
* **Shiny App**: [https://innovationandvalueinitiative.shinyapps.io/ivi-ra/](https://innovationandvalueinitiative.shinyapps.io/ivi-ra/)
	
	
	
### More papers on the use of shiny for health economic modelling

* Baio G, Heath A. When simple becomes complicated: why excel should lose its place at the top table. [https://journals.sagepub.com/doi/full/10.5301/grhta.5000247](https://journals.sagepub.com/doi/full/10.5301/grhta.5000247)
* Incerti D, Thom H, Baio G, Jansen JP. R you still using excel? The advantages of modern software tools for health technology assessment. Value in Health. 2019 May 1;22(5):575-9. [https://www.valueinhealthjournal.com/article/S1098-3015(19)30050-6/pdf](https://www.valueinhealthjournal.com/article/S1098-3015(19)30050-6/pdf)

