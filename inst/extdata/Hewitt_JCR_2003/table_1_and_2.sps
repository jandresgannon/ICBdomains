* THIS COMMAND JOB GENERATES THE ANALYSIS FOR TABLES 1 AND 2

* NOTE, THE FILE REFERENCE IN THE GET FILE COMMAND WILL NEED TO 
* BE MODIFIED IN ORDER FOR THIS JOB TO WORK PROPERLY ON OTHER COMPUTERS

GET FILE='C:\Documents and Settings\hewittjj\My Documents\My'+  ' Work\Projects\ICB_Projects\DyadicICB\Jcr_2002\Replication Data\mid_2155.sav'

* CROSS TABULATION ANALYSIS OF DISPUTES THAT CROSS BOTH THE MID AND
* CRISIS THRESHOLD WITH DISPUTES THAT CROSS ONLY THE MID THRESHOLD

CROSSTABS
  /TABLES=MATCH BY HIHOST
  /FORMAT=AVALUE TABLES
  /CELLS=COUNT ROW 

* THESE T-TESTS CORRESPOND TO THE ANALYSES PRESENTED IN TABLE 2.

T-TEST
  GROUPS=match(1 0)
  /MISSING=ANALYSIS
  /VARIABLES=severity
  /CRITERIA=CIN(.95) .

TEMPORARY
SELECT IF (HIHOST=2)

T-TEST
  GROUPS=match(1 0)
  /MISSING=ANALYSIS
  /VARIABLES=severity
  /CRITERIA=CIN(.95) .


TEMPORARY
SELECT IF (HIHOST=3)

T-TEST
  GROUPS=match(1 0)
  /MISSING=ANALYSIS
  /VARIABLES=severity
  /CRITERIA=CIN(.95) .


TEMPORARY
SELECT IF (HIHOST=4)

T-TEST
  GROUPS=match(1 0)
  /MISSING=ANALYSIS
  /VARIABLES=severity
  /CRITERIA=CIN(.95) .
