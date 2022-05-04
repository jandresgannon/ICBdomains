/*This job produces the analysis reported in Table 4 from the article*/

#delimit ;
clear; 
pause on;
set more on;
set memory 150000;
set matsize 300;

use triangle_crisis.dta;

desc;

summ;


gen smldmat=demauta if demauta<=demautb & demautb~=.;

replace smldmat=demautb if demautb<demauta & demauta~=.;

gen smldep=dependa if dependa<=dependb & dependb~=.;

replace smldep=dependb if dependb<dependa & dependa~=.;

gen dyadid=(1000*statea)+stateb;

   
iis dyadid;

tis year;

   
#del ;  

/*Three different models will be estimated. The first replicates Russett and Oneal for the 
1886-1992 period. The second estimates a model for MID involvement for the temporal domain
for which we have crisis data. The third estimates the model for crisis involvement.*/

xtgee dispute1 smldmat smldep smigoabi lcaprat allies noncontg logdstab minrpwrs,
  family(binomial) link(logit) corr(ar1) force robust nolog;

xtgee dispute1 smldmat smldep smigoabi lcaprat allies noncontg logdstab minrpwrs
  if year>1918, family(binomial) link(logit) corr(ar1) force robust nolog;

xtgee crisis1 smldmat smldep smigoabi lcaprat allies noncontg logdstab minrpwrs
  if year>1918, family(binomial) link(logit) corr(ar1) force robust nolog;

