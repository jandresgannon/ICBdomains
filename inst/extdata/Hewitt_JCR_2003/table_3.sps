* This command job produces the analysis for Table 3. The file 
* icb_dyads_233.sav contains information about 233 crisis dyads that were
* computed from strictly bilateral crises. For reasons described in the 
* article, it would be problematic to conduct this analysis on dyads computed
* from multilateral crises.

* This file reference will need to be modified in order for this job to
* work properly on a different computer.

GET FILE='C:\Documents and Settings\hewittjj\My Documents\My '+
 'Work\Projects\ICB_Projects\DyadicICB\Jcr_2002\Replication Data\icb_dyads_233.sav'

CROSSTABS
  /TABLES=MATCH BY GRAV_DI
  /FORMAT=AVALUE TABLES
  /STATISTIC=CHISQ
  /CELLS=COUNT ROW

EXECUTE
