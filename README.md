# MSc Heart Failure Predictive Modeling


## 1. Overview

The goals of this research are twofold: to create a reliable survival prediction model and to unearth critical elements for the survival prediction of heart failure patients. As such, we used a dataset of 299 heart failure patients' medical records retrieved from the UCI repository https://archive.ics.uci.edu/ml/datasets/Heart+failure+clinical+records. These statistics were compiled in 2015 from the Faisalabad Institute of Cardiology and the Allied Hospital in Faisalabad, Pakistan (Ahmad et al., 2017). In total, there are 299 individuals with heart failure in this dataset, 105 of whom are female and 194 of whom are male, ranging in age from 40 to 95. In addition, all patients had a previous diagnosis of heart failure. Anaemia, hypertension, diabetes, sex, and smoking are all examples of the 13 clinical variables in the dataset that can be represented as a binary.


**Features:**

* `age` : Age of the patient in years
* `anaemia` : Decrease of red blood cells or hemoglobin (haematocrit levels were lower than 36%)
* `creatinine_phosphokinase` : Level of the CPK enzyme in the blood mcg/L (23, ..., 7861)
* `diabetes` : If the patient has diabetes (Boolean) 
* `ejection_fraction` : Percentage of blood leaving the heart at each contraction
* `high_blood_pressure` : If a patient has hypertension (Boolean) 
* `platelets` : Platelets in the blood (kiloplatelets/mL)
* `serum_creatinine` : Level of creatinine in the blood
* `serum_sodium` : Level of sodium in the blood (mEq/L )
* `sex` : Woman or man
* `smoking` : If the patient smokes (Boolean) 
* `time` : Follow-up period
* `DEATH_EVENT` : If the patient died during the follow-up period (Boolean)