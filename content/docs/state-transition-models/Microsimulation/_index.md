# Microsimulation Modelling

Packages Available on CRAN

## Package: gems
Generalized Multistate Simulation Model
 
### Maintained By
Luisa Salazar Vizcaya <luisapaola.salazarvizcaya at insel.ch>
Reference Manual on CRAN – https://cran.r-project.org/web/packages/gems/gems.pdf
 
### Description
*  Simulate and analyze models with general hazard functions.
*  Multistate model is not required to be a Markov model
*  However, the package only considers multistate models without loops. I.e. Models which can be written as directed acyclic graphs.
*  Model includes parameter uncertainty
*  Simulate disease progression in patients and predicts the effect of different interventions on patient outcome.
*  Disease progression is represented by a series of events (e.g., diagnosis, treatment and death), displayed in a directed acyclic graph
*  Vertices correspond to disease states and the directed edges represent events.
*  However, applications are not limited to the medical field and can extend to other domains where multistate simulation is of interest.
*  3 classes to encode all model inputs and outputs
*  6 main functions; 3 to specify the model, 1 for simulation; 2 to summarize results
 
### Inputs/Outputs/Sample Code
(extracted verbatim from the Vignette) 
*Load Package*:
install.packages("gems")
 
*Classes*:
`transition.structure` contains the number of model states and a matrix with elements that are used to specify transition* specific hazard functions, their parameters and covariances
 
`ArtCohort` contains all aspects of the simulated cohort, including the model input and a data.frame with the entry times for each patient into each of the states.
 
`PosteriorProbabilities` contain the transition probabilities or cumulative incidence that can be calculated from the ArtCohort.
 
*Functions*:
`generateHazardMatrix` creates a template of class transition.structure that can be used to specify the transition* specific hazard functions.
 
`generateParameterMatrix` creates a template of class transition.structure that can be used to specify the parameters.
 
`generateParameterCovarianceMatrix` creates a transition.structure that can be used to specify the parameter covariance.
simulateCohort simulates the specified artificial cohort and returns an object of class ArtCohort.
 
`transitionProbabilities` returns an object of class posteriorProbabilities that contains the transition probabilities from the initial state over time.  
 
`cumulativeIncidence` returns an object of class posteriorProbabilities that contains the cumulative incidence over time.
 
### Additional Resources
* Vignette –  https://rdrr.io/cran/gems/f/inst/doc/gems.pdf
Blaser N, Vizcaya LS, Estill J, et al. gems: An R Package for Simulating from Disease Progression Models. J Stat Softw 2015; 64(10): 1-22
 
* Microsimulation Modelling Tutorial in R
Krijkam EM, Alarid* Escudero F, Enns EA, et al. Microsimulation Modeling for Health Decision Sciences Using R: A Tutorial. Medical Decision Making 2018; 38(3): 400-422
 

## Package: MicSim 
Performing Continuous* Time Microsimulation
 
### Maintained By
Sabine Zinn < szinn at diw.de>
Reference Manual on CRAN – https://cran.r-project.org/web/packages/MicSim/MicSim.pdf
 
### Description
Perform continuous* time microsimulation for a wide range of demographic applications. (Individual life* courses are specified by a continuous* time multi* state model).
*  Package uses non* homogeneous continuous* time Markov chains to describe individual life* courses.
 
Inputs/ Outputs/ Sample Code:
Load Package:
install.packages("MicSim")
 
Functions:
buildTransitionMatrix supports the constructing of the ‘transition matrix’, which determines the transition pattern of the microsimulation model. The actual microsimulation is performed by micSim (sequentially) or by micSimParallel (parallel computing).
 
convertToLongFormat function reshapes the output given by micSim or by micSimParallel into long format. In long format, the data comprises for each episode which an individual experiences one row.
 
convertToWideFormat reshapes the output given by micSim or by micSimParallel into wide format. In wide format, the data comprises for each episode which an individual experiences additional column entries.
 
micSim performs a continuous* time microsimulation run (sequentially, i.e., using only one CPU core).
 
micSimParallel is a parallelized version of the function micSim. That is, it runs a continuous* time microsimulation simulation distributed, i.e., using more than one CPU core.
 
setSimHorizon sets the simulation horizon of the microsimulation. The actual microsimulation is performed by micSim (sequentially) or by micSimParallel (parallel computing).
 
### Additional Resources
* Vignette not available on CRAN
*   MicSim Package Toolkit
Zinn, Sabine. (2014). The MicSim Package of R: An Entry* Level Toolkit for Continuous* Time Microsimulation. International Journal of Microsimulation. 7(3): 3* 32.
* Microsimulation Modelling Tutorial in R
Krijkam EM, Alarid* Escudero F, Enns EA, et al. (2018). Microsimulation Modeling for Health Decision Sciences Using R: A Tutorial. Medical Decision Making 2018; 38(3): 400* 422


# Package: MILC
Microsimulation Lung Cancer (MILC) model
 
### Maintained By
Stavroula A. Chrysanthopoulou <Stavroula_Chrysanthopoulou@brown.edu>
Reference Manual on CRAN – https://cran.r-project.org/web/packages/MILC/MILC.pdf
 
### Description
Predict individual trajectories using the continuous time microsimulation model MILC, that describes the natural history of lung cancer.
*    	Dynamic, continuous time microsimulation model that describes the natural history of lung cancer in the absence of any screening or treatment components.
*    	Model accounts for age, gender, and smoking history, including smoking status, start and quit smoking ages, and average number of cigarettes smoked per day when relevant.
*    	Model comprises four main components: onset of the first malignant cell, tumor growth, disease progression, survival.
 
 
Inputs/Outputs/Sample Code:
Load Package:
install.packages("MILC")
 
Functions:
age_grp returns the 5* year age group ("<40", "40* 44",…,or "85+") to which an individual belongs.
 
ci.lung estimates cumulative incidence for lung cancer mortality by age (5* years age group), gender ("male" or "female") and tumor stage at diagnosis (i.e., "localized", "regional", or "distant").
 
current.other estimates cumulative incidence for other cause (not lung cancer) mortality, for current smokers by age (5* years age group), gender ("male" or "female") and smoking intensity group ("1* 10", "11* 20", or "21+" cigarettes) based on the average number of cigarettes smoked per day.
 
d_grp returns the smoking intensity group ("1* 10", "11* 20", or "21+" cigarettes) of an individual based on the average number of smoked per day
 
former.other estimates cumulative incidence for other cause (not lung cancer) mortality, for former smokers by age (5* years age group), gender ("male" or "female") and smoking intensity group ("1* 10", "11* 20", or "21+" cigarettes) based on the average number of cigarettes smoked per day.
 
HT_mal estimates cumulative hazard up to age t for the onset of first malignant cell, given gender, smoking status and smoking intensity.
 
ht_mal_int estimates cumulative hazard for the onset of the first malignant cell between two time points (ages).
 
nat_hist runs the MILC model and predicts a full lung cancer trajectory depending on the age, gender and smoking history of an individual.
 
never.other estimates the cumulative incidence for other cause (not lung cancer) mortality, for non smokers by age (5* years age group), and gender ("male" or "female").
 
tdeath_lung predicts the age (years) at which a person may die of lung cancer given gender, age and tumor stage at diagnosis.
 
tdeath_other predicts the age (years) at which a person may die from a cause other than lung cancer given age, gender and smoking intensity, when relevant.
 
t_mal predicts the age at the onset of the first malignant given gender and smoking history, when relevant.
 
t_prog simulates the time points (years) from the onset of the first malignant cell to major states in the natural history of lung cancer, i.e., the time at the beginning of the regional (Treg), and distant (Tdist) stage, and time at diagnosis (Tdiagn).
t_vol predicts the time (years) at which tumor has reached volume V from the onset of the first malignant cell.
  
### Additional Resources
* Vignette not available on CRAN
* Microsimulation Modelling Tutorial in R
Krijkam EM, Alarid* Escudero F, Enns EA, et al. (2018). Microsimulation Modeling for Health Decision Sciences Using R: A Tutorial. Medical Decision Making 2018; 38(3): 400* 422
 


## Package: hesim 
Health Economic Simulation Modeling and Decision Analysis 

### Maintained By
Devin Incerti <devin.incerti@gmail.com>
Description: Parametrize, simulate, and analyze health* economic simulation models.

*    	Supports N* state partitioned survival models and continuous time state transition models parametrized using survival or multi* state modelling.

Note information taken from these sources (Accessed 07/11/2019):
CRAN index: https://cran.r-project.org/web/packages/hesim/index.html
Manual: https://cran.r-project.org/web/packages/hesim/hesim.pdf
Authors: Devin Incerti and Jeroen P. Jansen
Cited vignettes: https://cran.r-project.org/web/packages/hesim/vignettes/intro.html

This package can be used to simulate disease progression amongst a cohort of patients. It can also parameterise a decision model, using the simulated disease progression model and inputs related to patient cost and treatment effect. For references of these approaches please see “Description” within the package manual. There are two different approaches for individual* level and cohort models. The package can simulate a group of individual patients (i.e. a patient id for each patient). 
Users can incorporate survival models or multistate models into your disease progression modelling. This package seems useful if you have datasets on epidemiological and cost data as you can integrate data analyses (such as survival analysis for disease progression and regression analyses for costs) with health economic decision analysis. However, you can also just state the input parameter distribution values you want to use. 
How do I input my data to it/what inputs does it take?:
hesim_data object with the function hesim_data() *  based off of data.table 
There is code to do this in the vignette. [https://cran.r-project.org/web/packages/hesim/vignettes/intro.html ]
After doing this you end up with the following data.table input (taken vignette linked above):

```{r}

##    strategy_id
## 1:           1
## 2:           2
## 
## $patients
##       patient_id      age female
##    1:	      1 39.24173      0
##    2:	      2 41.72205      1
##    3:	      3 46.75134      0
##    4:	      4 38.41198      1
##    5:	      5 44.70204      0
##   * * *                            
##  996:        996 52.78174      0
##  997:        997 52.45926      0
##  998:        998 44.04488      1
##  999:        999 46.42657      0
## 1000:       1000 39.03964      1
## 
## $states
##    state_id state_name
## 1:        1	Healthy
## 2:        2   	Sick
## 
## $transitions
##    transition_id from to from_name to_name trans
## 1:             1	1  2   Healthy    Sick 	1
## 2:             2	1  3   Healthy    Dead 	2
## 3:             3	2  1  	Sick Healthy     3
## 4:             4	2  3  	Sick    Dead 	4
## 
## attr(,"class")
 
# An example of the layout for the cost and QALY inputs (with it being QALYs in this particular example) taken from the vignette (same link as above):
#  
# sample strategy_id state_id   dr	qalys       lys
## 1:      1       	1        1 0.03 8.653024 10.350427
## 2:      1       	1        2 0.03 1.855214  2.075266
## 3:      1       	2        1 0.03 8.756579 10.474295
 
```

#What outputs do I get?

```{r} 
# An object with (non* exclusively) :
# > icea_pw$summary
#    strategy_id grp   ie_mean  ie_lower ie_upper  ic_mean ic_lower ic_upper
# 1:           2   1 0.1581546 * 1.126363 1.642161 58537.23 41765.56 76749.95
#        icer
# 1: 370126.5

```

#### Sample code
See above & 
Vignette =  https://cran.r-project.org/web/packages/hesim/vignettes/intro.html
 
Additional Resources:
*  Vignette <Continuous Time State Transition Models> *  https://cran.r-project.org/web/packages/hesim/vignettes/ctstm.html 
*   Vignette <Individualized Cost-Effectiveness Analysis> *  https://cran.r-project.org/web/packages/hesim/vignettes/icea.html
*   Vignette <Introduction to hesim> *  https://cran.r-project.org/web/packages/hesim/vignettes/intro.html
*   Vignette <Partitioned Survival Models > *  https://cran.r-project.org/web/packages/hesim/vignettes/psm.html
*   Microsimulation Modelling Tutorial in R
 Krijkam EM, Alarid* Escudero F, Enns EA, et al. (2018). Microsimulation Modeling for Health Decision Sciences Using R: A Tutorial. Medical Decision Making 2018; 38(3): 400* 422


# Additional Microsimulation Packages Found Online (GitHub)
 
## Package: simario
 
Developed By: COMPASS Research Centre, Faculty of Arts, University of Auckland
Found Here: https://github.com/compassresearchcentre/simario
 
### Description
Provide a flexible framework of functions for creating a discrete* time dynamic microsimulation
 
Inputs/ Outputs/ Sample Code:
Load Package:
install.packages("devtools")
install.packages("roxygen2")
library(devtools)
rmall()
document("simario", clean=T)
document("simario")
as.package("simario")
check("simario")
has_devel()
 
### For further examples of code see
https://github.com/compassresearchcentre/simario/blob/master/simario%20scrap.r
 
 
### Additional Resources
Slide Deck from COMPASS detailing the package: https://cdn.auckland.ac.nz/assets/auckland/arts/our* research/research* institutes* centres* groups/compass/microsimulation/simario* r* for* dynamic* microsimulation.pdf

 
## Package: microsimulation
 
Developed By: mclements
Found Here: https://github.com/mclements/microsimulation
 
### Description
Provides several approaches for microsimulation and event-based, discrete event simulation
 
Inputs/ Outputs/ Sample Code:
Load Package:
install.packages("BH")
install.packages("Rcpp")
install.packages("devtools")
require(devtools)
install_github("mclements/microsimulation")
 
For further examples of code see: ‘Simple Examples’
https://github.com/mclements/microsimulation


## Spatial Microsimulation Packages Available on CRAN

## rakeR: Easy Spatial Microsimulation (Raking) in R
*    	Description: Functions for performing spatial microsimulation (‘raking’)
*    	Vignette not available: no comprehensive overview of the package
*    	Reference Manual: https://cran.rstudio.com/web/packages/rakeR/rakeR.pdf
o   8 documented functions
 
## sms: Spatial Microsimulation
*    	Description: Produce small area population estimates by fitting census data to survey data.
*    	Vignette not available: no comprehensive overview of the package
*    	Reference Manual: https://cran.r-project.org/web/packages/sms/sms.pdf
o   21 documented functions
*    	Alternative resource – published paper on the package: Kavroudakis D. sms: An R Package for the Construction of Microdata for Geographical Analysis. Journal of Statistical Software. 2015. DOI: 10.18637/jss.v068.i02
 
## synthACS: Synthetic Microdata and Spatial MicroSimulation Modeling for ACS Data
*    	Description: Builds synthetic micro* datasets based on American Community Survey (ACS) base tables, (at any user* specified geographic level).
*    	Vignette: https://cran.r-project.org/web/packages/synthACS/vignettes/jss_synthACS.pdf
o   Provides access to curated American Community Survey (ACS) base tables via a wrapper to library(acs).
o   Conducts spatial microsimulation modeling (SMSM) via simulated annealing.
o   SMSM is conducted in parallel by default.
o   Functionality for data* extensibility of micro* datasets.
 57 documented functions



## Additional Simulation Packages Reviewed
 
## genSurv: ‘Generating Multi-State Survival Data’
*    	Description: Generates data with one binary time* dependent covariate and data stemming from a progressive illness* death model.
*    	Vignette not available: no comprehensive overview of the package
*    	Reference Manual: https://cran.r-project.org/web/packages/genSurv/genSurv.pdf
o   7 documented functions
  
## PermAlgo: ‘Permutational Algorithm to Simulate Survival Data’
*    	Description: Generates a dataset in which event and censoring times are conditional on an user* specified list of covariates, some or all of which are time* dependent. Event times and censoring times also follow user* specified distributions
*    	Vignette not available: no comprehensive overview of the package
*    	Reference Manual: https://cran.r-project.org/web/packages/PermAlgo/PermAlgo.pdf
o   Only one documented function: permalgorithm
(A one* to* one matching of n observed times with n independently generated vectors of covariates values.)
The matching is performed based on a permutation probability law derived from the partial likelihood of Cox’s Proportional Hazards (PH) model.
 
## prodlim: ‘Product-Limit Estimation for Censored Event History Analysis
*    	Description: Implementation of nonparametric estimators for survival analysis using the Kaplan Meier and Aalen* Johansen method.
*    	Vignette not available: no comprehensive overview of the package
*    	Reference Manual: https://cran.r-project.org/web/packages/prodlim/prodlim.pdf
o   39 documented functions
 

## simMSM: Simulation of Event Histories for Multi* State Models
*    	Description: Simulation of event histories with possibly non* linear baseline hazard rate functions, non* linear (time* varying) covariate effect functions, and dependencies on the past of the history. Random generation of event histories is performed using inversion sampling on the cumulative all* cause hazard rate functions.
*    	Vignette not available: no comprehensive overview of the package
*    	Reference Manual: https://cran.r-project.org/web/packages/simMSM/simMSM.pdf
o   7 documented functions
 
## simPH: Tools for Simulation and Plotting Quantities of Interest Estimated from Coz Proportional Hazard Models
*    	Description: Simulates and plots quantities of interest (relative hazards, first differences, and hazard ratios) for linear coefficients, multiplicative interactions, polynomials, penalised splines, and non* proportional hazards, as well as stratified survival curves from Cox Proportional Hazard models. It also simulates and plots marginal effects for multiplicative interactions.
*    	Vignette: https://cran.r-project.org/web/packages/simPH/vignettes/simPH* overview.pdf
o   Used in order to effectively communicate results fro the Cox PH models, including models with interactive and nonlinear effects.
o   Tool for examining event data.
o   The package makes it easy to simulate and then plot quantities of interest for a variety of effects estimated from Cox PH models including interactive effects, nonlinear effects, as well as ‘vanilla’ linear effects.
o   The package employs visual weighting in order to effectively communicate estimation uncertainty.
o   Hypothetical and empirical examples used to demonstrate package’s syntax and capabilities.
(21 documented functions)
  
## survsim: Simulation of Simple and Complex Survival Data
*    	Description: Simulation of simple and complex survival data including recurrent and multiple events and competing risks.
*    	Vignette not available: no comprehensive overview of the package
*    	Reference Manual: https://cran.r-project.org/web/packages/survsim/survsim.pdf
o   5 documented functions
*    	Alternative resource – published paper on the package: Morina D, Navarro A. The R Package survism for the Simulation of Simple and Complex Survival Data. Journal of Statistical Software. 2014. DOI: 10.18637/jss.v059.i02
  
## simsurv: Simulate Survival Data
*    	Description: Simulate survival times from standard parametric survival distributions (exponential, Weibull, Gompertz), 2* component mixture distributions, or a user* defined hazard, log hazard, cumulative hazard, or log cumulative hazard function.
*    	Vignette (technical background): https://cran.r-project.org/web/packages/simsurv/vignettes/simsurv_usage.html
o   Baseline covariates can be included under a proportional hazards assumption.
o   Time dependent effects (i.e. non* proportional hazards) can be included by interacting covariates with linear time or a user* defined function of time. (Clustered event times are also accommodated.)
o   The 2* component mixture distributions can allow for a variety of flexible baseline hazard functions reflecting those seen in practice.
o   If the user wishes to provide a user* defined hazard or log hazard function then this is possible, and the resulting cumulative hazard function does not need to have a closed* form solution.
2 documented functions

 
## SimHaz: Simulated Survival Hazard Analysis for Time* Dependent Exposure
*    	Description: Generate power for the Cox proportion hazards model by simulation survival events data with time dependent exposure status for subjects.
*    	Vignette not available: no comprehensive overview of the package
*    	Reference Manual: https://cran.r-project.org/web/packages/SimHaz/SimHaz.pdf
o   8 documented functions
 
## SimSCRPiecewise: Simulates Univariate and Semi* Competing Risks Data Given Covariates and Piecewise Exponential Baseline Hazards
*    	Description: Simulate survival data from piecewise exponential hazards with a proportional hazards adjustment for covariates.
*    	Vignette not available: no comprehensive overview of the package
*    	Reference Manual: https://cran.r-project.org/web/packages/SimSCRPiecewise/SimSCRPiecewise.pdf
o   2 documented functions:
SimUNIVPiecewise simulates univariate survival data based on a piecewise exponential hazard, covariate matrix and true regression vector.
SimSCRPiecewise simulates semicompeting risks data based on three piecewise exponential hazards, three true regression vectors and three matrices of patient covariates (which can be different or the same).

