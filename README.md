# MSc Heart Failure Predictive Modeling

## Table of Contents
1. [Overview](#overview)
2. [Methodology](#methodology)
3. [Results](#results)
4. [Learning Reflections](#learning-reflections)
5. [Conclusions](#conclusions)

## Overview

This project focuses on Heart Failure (HF), a medical condition that impacts the quality of life for patients across various age groups. Heart Failure is a leading cause of hospitalisation and a significant contributor to death and disability worldwide. The project aims to leverage machine learning techniques to offer insights and solutions for this pressing healthcare issue.

**Objective or Problem Statement**

The primary objective of this project is to apply machine learning algorithms to analyse patterns related to Heart Failure. By doing so, the project seeks to improve early diagnosis and intervention, potentially saving lives and improving healthcare outcomes.

**Business Understanding**

Heart Failure is a medical condition and a significant public health issue that incurs a substantial economic burden. Early and accurate diagnosis is vital for patient well-being and healthcare systems aiming to be cost-effective. This project aims to use machine learning to assist in this area, potentially leading to faster interventions and better resource allocation in healthcare settings.


## Methodology

This project employs various machine learning algorithms to analyse a dataset related to Heart Failure.

### Data

We used a dataset of 299 heart failure patients' medical records retrieved from the [UCI repository](https://archive.ics.uci.edu/ml/datasets/Heart+failure+clinical+records). These statistics were compiled in 2015 from the Faisalabad Institute of Cardiology and the Allied Hospital in Faisalabad, Pakistan (Ahmad et al., 2017). In total, there are 299 individuals with heart failure in this dataset, 105 of whom are female and 194 of whom are male, ranging in age from 40 to 95. In addition, all patients had a previous diagnosis of heart failure. Anaemia, hypertension, diabetes, sex, and smoking are all examples of the 13 clinical variables in the dataset that can be represented as a binary.


**Features:**

* `age` : Age of the patient in years
* `anaemia` : Decrease of red blood cells or hemoglobin (haematocrit levels were lower than 36%)
* `creatinine_phosphokinase` : Level of the CPK enzyme in the blood mcg/L
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
  

![Age Distribution](results/Age_dist_target.png)
*This graph presents the age distribution of patients categorized by the target variable. It provides an insight into the age groups that are more susceptible to heart failure. The distribution indicates that older age groups appear to be at a higher risk, reinforcing the importance of age as a feature in our predictive models.*


![Features correlation](results/corr_.png)
*The correlation plots illustrate how different features are correlated with each other. Strong correlations between features  indicate potential multicollinearity, which was considered during the feature selection process.*

### Algorithms Used
The following machine-learning algorithms have been employed in this study:
- Decision Tree
- Random Forest
- Logistic Regression
- Gradient Boosting Machine

### Challenges and Limitations
Our research faced several challenges and limitations, such as:
- The small size of the dataset.
- The absence of external validation.
- Limited sample size affecting the model's generalizability.
- Feature limitations lacking potentially relevant variables like socioeconomic status.
- Potential data imbalance, especially concerning the target variable 'DEATH_EVENT'.
- Data completeness concerning the quality and availability of each feature.

Further stages of the methodology include data preprocessing, exploratory data analysis, feature selection, model training, and evaluation. The R programming language and R Studio have been used to perform these tasks, encapsulated in an R Markdown notebook.



## Results

The study employed four machine learning algorithms: Decision Tree, Random Forest, Logistic Regression, and Gradient Boosting Machine. According to our findings, the Random Forest algorithm emerged as the most effective, achieving:

- **Accuracy**: 91.53%
- **Sensitivity**: 97.5%
- **Specificity**: 78.95%


![Model Comparison](results/model_comparison.png)
*This graph compares the performance metrics of all the models tested in this study. The Random Forest model stands out for its balanced performance across multiple metrics, thereby making it the most reliable model for this specific task.*

### Importance of Metrics 
In a medical diagnosis task like predicting heart failure, Sensitivity is often the most critical metric. Capturing as many positive cases (patients with heart failure) as possible is crucial to prevent adverse outcomes.

Essential factors in predicting risk in heart failure patients were also identified, including `Serum Creatinine`, `Ejection Fraction`, `time`, and `age`. Medical professionals could utilise these factors for better patient outcomes.


## Learning Reflections

This section would typically include reflections on what was learned throughout the research process, from comparing machine learning algorithms to the importance of evaluation metrics.

![Random Forest](results/rf_feature_importance.png)


![GBM Importance](results/GBM_feature_importance.png)

*The feature importance graphs for both the Gradient Random Forest and Boosting Machine models, respectively, indicate the variables that are most influential in predicting heart failure. Features like 'Serum Creatinine' and 'Ejection Fraction' consistently show high importance, validating their role in the diagnostic process.*

### Metrics Consideration 
One of the crucial learnings from this study is the importance of evaluation metrics like Sensitivity in medical diagnosis tasks. While accuracy is a commonly used metric, it may not be sufficient for tasks with a high cost of False Negatives.



## Conclusions

Our research aimed to create a robust predictive model for diagnosing and treating heart failure. Utilising four machine learning algorithms—Decision Tree, Random Forest, Logistic Regression, and Gradient Boosting Machine—we achieved remarkable results, including a 91.53% accuracy and a 97.5% sensitivity rate. The Random Forest algorithm proved remarkably effective, especially concerning the critical Sensitivity metric.

**Caveats and Future Directions** 
Despite the promising results, our research has limitations, such as the small dataset size and lack of external validation. For future studies, it would be beneficial to incorporate additional features and use more extensive datasets from various sources.

**Final Thoughts** 
Our study presents a novel methodology for estimating the likelihood of mortality due to heart failure, providing a foundation for developing more precise and valuable predictive models for this condition.