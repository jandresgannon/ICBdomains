clear
set mem 600m
set mat 800
use nukevictory-JCRfinal, clear

*Base models-- Table 2
*Model 1: 
probit prevail nuke2a nuke2b nuke2ab capshare supera targeta prevcrisisa viol, cluster(crdynum)
*Model 2: 
probit victory nuke2a nuke2b nuke2ab capshare supera targeta prevcrisisa viol, cluster(crdynum)
*Model 3: 
probit prevail nuke2a nuke2b nuke2ab salient nuke2asal nuke2bsal capshare supera targeta prevcrisisa viol, cluster(crdynum)
*Model 4: 
probit victory nuke2a nuke2b nuke2ab salient nuke2asal nuke2bsal capshare supera targeta prevcrisisa viol, cluster(crdynum)
*Models 5&6: 
probit defeat nuke2a nuke2b nuke2ab capshare supera targeta prevcrisisa viol, cluster(crdynum)
probit defeat nuke2a nuke2b nuke2ab salient nuke2asal nuke2bsal capshare supera targeta prevcrisisa viol, cluster(crdynum)

*Clarify simulations for substantive effects
estsimp probit prevail nuke2a nuke2b nuke2ab capshare supera targeta prevcrisisa viol, cluster(crdynum)
setx median
simqi
setx nuke2a 1 nuke2b 0 nuke2ab 0
simqi
setx nuke2a 0 nuke2b 1 nuke2ab 0
simqi
setx nuke2a 1 nuke2b 1 nuke2ab 1
simqi
drop b*
estsimp probit prevail nuke2a nuke2b nuke2ab capshare supera targeta prevcrisisa viol if salient==1, cluster(crdynum)
setx median
simqi
setx nuke2a 1 nuke2b 0 nuke2ab 0
simqi
setx nuke2a 0 nuke2b 1 nuke2ab 0
simqi
setx nuke2a 1 nuke2b 1 nuke2ab 1
simqi
drop b*
estsimp probit prevail nuke2a nuke2b nuke2ab capshare supera targeta prevcrisisa viol if salient==0, cluster(crdynum)
setx median
simqi
setx nuke2a 1 nuke2b 0 nuke2ab 0
simqi
setx nuke2a 0 nuke2b 1 nuke2ab 0
simqi
setx nuke2a 1 nuke2b 1 nuke2ab 1
simqi
drop b*
estsimp weibull crisisdur nuke2a nuke2b nuke2ab capshare supera targeta prevcrisisa viol, cluster(crdynum)
setx median
simqi
setx nuke2a 1 nuke2b 0 nuke2ab 0
simqi
setx nuke2a 0 nuke2b 1 nuke2ab 0
simqi
setx nuke2a 1 nuke2b 1 nuke2ab 1
simqi
drop b*
estsimp weibull crisisdur nuke2a nuke2b nuke2ab capshare supera targeta prevcrisisa viol if salient==1, cluster(crdynum)
setx median
simqi
setx nuke2a 1 nuke2b 0 nuke2ab 0
simqi
setx nuke2a 0 nuke2b 1 nuke2ab 0
simqi
setx nuke2a 1 nuke2b 1 nuke2ab 1
simqi
drop b*
estsimp weibull crisisdur nuke2a nuke2b nuke2ab capshare supera targeta prevcrisisa viol if salient==0, cluster(crdynum)
setx median
simqi
setx nuke2a 1 nuke2b 0 nuke2ab 0
simqi
setx nuke2a 0 nuke2b 1 nuke2ab 0
simqi
setx nuke2a 1 nuke2b 1 nuke2ab 1
simqi

*Duration Models-- Table 4
stset crisisdur
*Model 11: 
stcox nuke2a nuke2b nuke2ab capshare supera targeta prevcrisisa viol, cluster(crdynum) nohr
*Model 12: 
stcox nuke2a nuke2b nuke2ab salient nuke2asal nuke2bsal capshare supera targeta prevcrisisa viol, cluster(crdynum) nohr

*Robustness models-- Table 5
*Models 13&14: 
probit prevail nuke2a nuke2b nuke2ab capshare supera targeta prevcrisisa viol p5 usdefpact, cluster(crdynum) 
probit victory nuke2a nuke2b nuke2ab capshare supera targeta prevcrisisa viol p5 usdefpact, cluster(crdynum) 
*Models 15&16: 
probit prevail nuke2b nuke2ab capshare supera targeta prevcrisisa viol newnuke2a oldnuke2a, cluster(crdynum) 
probit victory nuke2b nuke2ab capshare supera targeta prevcrisisa viol newnuke2a oldnuke2a, cluster(crdynum) 

use nukevicotry_sel
*Selection models - Table 3
*Models 7&8: Nukes still increase the propects of victory
heckprob prevail nuke2a nuke2b nuke2ab capshare supera targeta prevcrisisa viol, sel(crisis=nuke2a nuke2b nuke2ab capshare supera prevcrisisa contig s_un_glo er peaceyrs peaceyrs2 peaceyrs3) cluster(nddyad)
heckprob prevail nuke2a nuke2b nuke2ab salient nuke2asal nuke2bsal capshare supera targeta prevcrisisa viol, sel(crisis=nuke2a nuke2b nuke2ab capshare supera prevcrisisa contig s_un_glo er peaceyrs peaceyrs2 peaceyrs3) cluster(nddyad)
*Models 9&10: Nukes still decrease the time of crisis
dursel crisisdur nuke2a nuke2b nuke2ab capshare supera targeta prevcrisisa viol, sel(nuke2a nuke2b nuke2ab capshare supera prevcrisisa contig s_un_glo er peaceyrs peaceyrs2 peaceyrs3) cluster(nddyad) d(weibull)
dursel crisisdur nuke2a nuke2b nuke2ab salient nuke2asal nuke2bsal capshare supera targeta prevcrisisa viol, sel(nuke2a nuke2b nuke2ab capshare supera prevcrisisa contig s_un_glo er peaceyrs peaceyrs2 peaceyrs3) cluster(nddyad) d(weibull)
