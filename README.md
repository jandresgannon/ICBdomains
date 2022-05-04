
# One if by land, and two if by sea: Cross-domain contests and the escalation of international crises

This is a package, documentation, and replication repository for the paper "One if by land, and two if by sea: Cross-domain contests and the escalation of international crises" (accepted for publication at *International Studies Quarterly*). This paper is part of the broader International Crisis Behavior Events (ICBe) project which can be found [here](https://www.crisisevents.org/).

* [Paper](https://github.com/CenterForPeaceAndSecurityStudies/ICBdomains/blob/main/paper/2022-05-04_ICB-Domains-preprint.pdf)

* [Appendix](https://github.com/CenterForPeaceAndSecurityStudies/ICBdomains/blob/main/docs/03_Appendix.Rmd)

For any questions, please email the author, [J Andres Gannon](https://jandresgannon.com/), at: [jagannon@hks.harvard.edu](mailto:jagannon@hks.harvard.edu).

## Replication Code and Analysis

### Self Contained Package

All of the files necessary for reproducing my analysis are including in a self contained R package "ICBd". You can install the package ICBd from github with the instructions below:

```{r gh-installation, eval = FALSE}
if(!require(devtools)) install.packages("devtools")
devtools::install_github("CenterForPeaceAndSecurityStudies/ICBd")
```

### R-Notebooks

The analysis and figures in the paper and statistical appendix are produced in a number of R Notebooks.

File Preparation - Dependent Variable:

* [01a File Preparation - Domain](https://github.com/CenterForPeaceAndSecurityStudies/ICBdomains/blob/main/docs/01a_Prep_Domain.Rmd): Prepares a novel dataset on the military domains used by each state actor during international crises.

* [01b File Preparation - Dyadic](https://github.com/CenterForPeaceAndSecurityStudies/ICBdomains/blob/main/docs/01b_Prep_Dyad.Rmd): Reshapes the novel domain data to the crisis-dyad level by merging with existing ICB dyadic datasets.

Supplementary information:

* [02 Summary Stats](https://github.com/CenterForPeaceAndSecurityStudies/ICBdomains/blob/main/docs/02_SummaryStats.Rmd): Provides descriptive statistics of the new data, both for data quality validation and exploratory data analysis.

* [03 Appendix](https://github.com/CenterForPeaceAndSecurityStudies/ICBdomains/blob/main/docs/03_Appendix.Rmd): Appendix includes additional statistical models and robustness checks.

Models and Figures:

* [Paper](https://github.com/CenterForPeaceAndSecurityStudies/ICBdomains/blob/main/paper/2022-05-03_ICB-Domains.Rmd): Results of the statistical models as well as code used to produce the figures and tables in the published manuscript are produced with in-line code in the paper itself.