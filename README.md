# BiologicalAges
Scripts for calculating biological ages in paper "Distinct biological ages of organs and systems identified from a multi-omics study."

Edited in 2022/02/08

‘calculateKDM.R’ is the script for calculating biological ages for individuals in the original data set. The KDM biological ages were calculated by ‘kdm_calc.R’ module. 

‘CalculatePE.Rmd’ is the script for calculating parameters (k, q, s, r) for KDM model in sex-stratified samples. The results of it were merged into ‘BiologicalAgeSummaryStatistics.xlsx’

‘dataPreparation_cox.R’ is the script for processing the data from National Health and Nutrition Examination Survey (NHANES) of the USA. The data was downloaded from https://wwwn.cdc.gov/nchs/nhanes/search/datapage.aspx?Component=Examination&CycleBeginYear=1999. The analyses include calculating biological ages and cox regressions.
