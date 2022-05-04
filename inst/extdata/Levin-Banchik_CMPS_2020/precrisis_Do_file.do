*****************************************************************************
*** Precrisis Military Hostility and Escalation in International Crises
*****************************************************************************

**** Hypothesis 1: nondirected

clear all 
use "precrisis.dta", clear 
sort dyad seqcr 
keep if stateacr<statebcr

// Table 1

tab ncmid180bi sevviody if sep14 != 0, row chi 

// Table 2

	// model 1 
logit sevviody ncmid180bi if sep14 != 0, cluster (dyad) or  
	// model 2
logit sevviody ncmid180 if sep14 != 0, cluster (dyad) or
	// model 3
logit sevviody ncmid180bi triggrdy gravtydy if sep14 != 0, cluster (dyad) or 
	// model 4
logit sevviody ncmid180bi pastsevviody pastoutfordy if sep14 != 0, cluster (dyad) or 
	// model 5
logit sevviody ncmid180bi democdy relcapdy if sep14 != 0, cluster (dyad) or 
	// model 6
logit sevviody ncmid180bi pastnumcr pcdy  pcdy#ncmid180bi durconfl if sep14 != 0, cluster (dyad) or 
	// model 7 
logit sevviody ncmid180bi triggrdy gravtydy pastsevviody pastoutfordy democdy relcapdy pastnumcr pcdy pcdy#ncmid180bi durconfl if sep14 != 0, cluster (dyad) or
	// model 8 
logit sevviody ncmid180 triggrdy gravtydy pastsevviody pastoutfordy democdy relcapdy pastnumcr pcdy pcdy#ncmid180bi durconfl if sep14 != 0, cluster (dyad) or


**** Hypotheses 2 and 3: directed
clear all 
use "precrisis.dta", clear 
sort dyad  seqcr 

// Table 3
	// model 1
logit sevvioabi hihostb180 if sep14 != 0, cluster (dyad) or 
	// model 2
logit sevvioabi hihosta180 if sep14 != 0, cluster (dyad) or 
	//  model 3
logit sevvioabi i.both##i.pcAbi triggrAbi gravtyAbi pastsevvioabi pastoutfora democa relcapa pastnumcr durconfl if sep14 != 0, cluster (dyad) or



**** Robustness checks 

// Appendix Table 1

clear all 
use "precrisis.dta", clear 
sort dyad  seqcr 
keep if stateacr<statebcr

	// Bivariate 
logit sevviody ncmid180bi if sep14 != 0, cluster (dyad) or  
logit cenviody ncmid180bi if sep14 != 0, cluster (dyad) or 
logit crismgdy ncmid180bi if sep14 != 0, cluster (dyad) or 
logit sevviody ncmidusef180bi if sep14 != 0, cluster (dyad) or 

	// Multivariate 
logit sevviody ncmid180 triggrdy gravtydy pastsevviody pastoutfordy democdy relcapdy pastnumcr pcdy pcdy#ncmid180bi durconfl if sep14 != 0, cluster (dyad) or
logit cenviody ncmid180 triggrdy gravtydy pastsevviody pastoutfordy democdy relcapdy pastnumcr pcdy pcdy#ncmid180bi durconfl if sep14 != 0, cluster (dyad) or
logit crismgdy ncmid180 triggrdy gravtydy pastsevviody pastoutfordy democdy relcapdy pastnumcr pcdy pcdy#ncmid180bi durconfl if sep14 != 0, cluster (dyad) or
logit sevviody ncmidusef180 triggrdy gravtydy pastsevviody pastoutfordy democdy relcapdy pastnumcr pcdy pcdy#ncmid180bi durconfl if sep14 != 0, cluster (dyad) or


// Appendix Table 2

clear all 
use "precrisis.dta", clear 
sort dyad  seqcr 
keep if stateacr<statebcr
recode ncmid30 (0=0) (1/30=1), gen (ncmid30bi) 
recode ncmid60 (0=0) (1/60=1), gen (ncmid60bi)
recode ncmid365 (0=0) (1/365=1), gen (ncmid365bi) 

	// Bivariate 
logit sevviody ncmid180bi if sep14 != 0, cluster (dyad) or   
logit sevviody ncmid30bi if sep14 != 0, cluster (dyad) or   
logit sevviody ncmid60bi if sep14 != 0, cluster (dyad) or   
logit sevviody ncmid365bi if sep14 != 0, cluster (dyad) or  

	// Multivariate 
logit sevviody ncmid180 triggrdy gravtydy pastsevviody pastoutfordy democdy relcapdy pastnumcr pcdy pcdy#ncmid180bi durconfl if sep14 != 0, cluster (dyad) or
logit sevviody ncmid30 triggrdy gravtydy pastsevviody pastoutfordy democdy relcapdy pastnumcr pcdy pcdy#ncmid180bi durconfl if sep14 != 0, cluster (dyad) or
logit sevviody ncmid60 triggrdy gravtydy pastsevviody pastoutfordy democdy relcapdy pastnumcr pcdy pcdy#ncmid180bi durconfl if sep14 != 0, cluster (dyad) or
logit sevviody ncmid365 triggrdy gravtydy pastsevviody pastoutfordy democdy relcapdy pastnumcr pcdy pcdy#ncmid180bi durconfl if sep14 != 0, cluster (dyad) or


// Appendix Table 3

clear all
use "precrisis_dyadyear.dta", clear
drop if sep14 == 0
heckprob sevviody ncmid180bi triggrdy gravtydy pastsevviody pastoutfordy joindem relcapdy pastnumcr pcdy durconfl, sel(crisis= pastsevviody pastoutfordy joindem relcapdy pastnumcr peaceyears peaceyears2 peaceyears3) cluster (dyad) nolog
heckprob sevviody ncmid180 triggrdy gravtydy pastsevviody pastoutfordy joindem relcapdy pastnumcr pcdy durconfl, sel(crisis= pastsevviody pastoutfordy joindem relcapdy pastnumcr peaceyears peaceyears2 peaceyears3) cluster (dyad) nolog
