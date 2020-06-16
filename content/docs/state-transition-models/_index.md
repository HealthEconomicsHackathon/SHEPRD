# State Transition Models

## Introduction
The concept behind state transition models are the definition of states, transitions between these states, an initial state vector, timing of transitions and the overall model run times and state values (“rewards”). 
Markov models are cohort models, where a cohort (group) of people pass through the model, allowing for expected values to be taken based on “average” transition probabilities over a specified time period. However, if large heterogeneity is present or “memory” (i.e. different transition probabilities or values based on patients’ previous clinical history) is required then the amount of states needed can become very large.  See: Markov Model [online]. (2016). York; York Health Economics Consortium; 2016. https://yhec.co.uk/glossary/markov-model/ 

Decision trees are a simplified of Markov models where potential decisions and health states are mapped out as distinct branches rather than. See:  Decision Tree [online]. (2016). York; York Health Economics Consortium; 2016. https://yhec.co.uk/glossary/decision-tree/ 

Microsimulation models are individual-based transition models, modelling individual movement through health states. Such models allow for patient “trackers” to incorporate clinical history. However, these models often require more coding complexity and computational intensity. See: Micro-Simulation [online]. (2016). York; York Health Economics Consortium; 2016. https://yhec.co.uk/glossary/micro-simulation/ 

See also: Siebert, U., Alagoz, O., Bayoumi, A.M., Jahn, B., Owens, D.K., Cohen, D.J. and Kuntz, K.M., 2012. State-transition modeling: a report of the ISPOR-SMDM modeling good research practices task force–3. Medical Decision Making, 32(5), pp.690-700.(source:  https://www.ispor.org/docs/default-source/resources/outcomes-research-guidelines-index/state-transition_modeling-3.pdf?sfvrsn=c71c04a_0 , accessed: 01/04/2020)

## When might I use this?
* State transition models are useful to explore individuals (the states) and how movement occurs between states (transitions) and the probability of these transitions occurring. They can be used to simulate a closed cohort population or a dynamic changing population.
* Decision trees are best suited for situations where time is not important and Markov/microsimulations are better suited to situations where it is important eg. time till recurrence of disease
* Decision trees can either model a continuous variable to produce a regression tree or utilise a categorical variable to make classification trees
* Can be used to model cohort (see Markov models) or individuals (see Microsimulation models)
* Can be used for one off interventions or can be dynamic interventions 
