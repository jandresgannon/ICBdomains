
# One if by land, and two if by sea: Cross-domain contests and the escalation of international crises

This is a package, documentation, and replication repository for the paper "One if by land, and two if by sea: Cross-domain contests and the escalation of international crises" (accepted for publication at International Studies Quarterly) 2022

The Paper:

[One if by land, and two if by sea: Cross-domain contests and the escalation of international crises](https://github.com/CenterForPeaceAndSecurityStudies/ISAF/blob/master/paper/2020-11-15_BurdenShare_GannonKent.pdf)
[Appendix](https://github.com/CenterForPeaceAndSecurityStudies/ICBdomains/blob/main/docs/03_Appendix.Rmd)

Author:

* [J Andres Gannon](https://jandresgannon.com/) (Harvard Kennedy School)

For any questions, please email: [jagannon@hks.harvard.edu](mailto:jagannon@hks.harvard.edu).

## Replication Code and Analysis

### Self Contained Package

All of the files necessary for reproducing our analysis are including in a self contained R package "ICBd". You can install the package ICBd from github with the instructions below:

```{r gh-installation, eval = FALSE}
if(!require(devtools)) install.packages("devtools")
devtools::install_github("CenterForPeaceAndSecurityStudies/ICBd")
```

### R-Notebooks

The analysis and figures in the paper and statistical appendix are produced in a number of R Notebooks. Code for the statistical models and figures/tables in the manuscript are produced in the RMarkdown notebook for the paper itself, which is located [here](https://github.com/CenterForPeaceAndSecurityStudies/ICBdomains/blob/main/paper/2022-05-03_ICB-Domains.Rmd).

File Preparation - Dependent Variable:

* [01a File Preparation - Domain](https://github.com/CenterForPeaceAndSecurityStudies/ICBdomains/blob/main/docs/01a_Prep_Domain.Rmd): Prepares a novel dataset on the military domains used by each state actor during international crises.

* [01b File Preparation - Dyadic](https://github.com/CenterForPeaceAndSecurityStudies/ICBdomains/blob/main/docs/01b_Prep_Dyad.Rmd): Reshapes the novel domain data to the crisis-dyad level by merging with existing ICB dyadic datasets.

Summary Statistics:

* [02 Summary Stats](https://github.com/CenterForPeaceAndSecurityStudies/ICBdomains/blob/main/docs/02_SummaryStats.Rmd): Provides descriptive statistics of the new data, both for data quality validation and exploratory data analysis.

