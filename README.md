# Non-parametric Tests in SAS

This repository contains non-parametric tests such as Shapiro-Wilk, Wilcoxon Rank Sum, Ansari-Bradley, Kolmogorov-Smirnov, Kruskal-Wallis and Spearman's Correlation Tests. The procedures including `UNIVARIATE`, `NPAR1WAY` and `CORR`. 

In this analysis, the Shapiro-Wilk is used to determine the normality for BMI and Systolic Blood Pressure only. According to Figure 3, the p-values for BMI and systolic blood pressure are > 0.0001 and less than the alpha value (0.05). The null hypothesis is rejected and conclude the data are not from a population with a normal distribution. Therefore non-parametric test will be used.

The Wilcoxon Rank Sum, Ansari-Bradley, Kolmogorov-Smirnov test are used to test the difference between 2 independent population (Diabetic & Non-diabetic patients). The Wilcoxon Rank Sum test is used to test for difference in median with the assumption of identical spread. Based on Figure 4, the p-value is 0.0003 and less than the alpha value (0.05). The null hypothesis is rejected and conclude the two populations have different medians. 

![image](https://user-images.githubusercontent.com/118715799/226116754-717ac60a-4927-4f16-af86-ea62d54fe078.png)


The Ansari-Bradley test is used to test for difference in spread with the assumption of identical median. Based on Figure 5, the p-value is 0.0098 and less than the alpha value (0.05). The null hypothesis is rejected and conclude the two populations have different spreads.

![image](https://user-images.githubusercontent.com/118715799/226117072-bd3797d5-0ef9-45ab-8bff-d81c4246eefc.png)

The Kolmogorov-Smirnov test is more appropriate for test the for overall difference between 2 population. Based on Figure 6, the p-value is 0.0002 and less than the alpha value (0.05). The null hypothesis is rejected and conclude the two populations is differ.

![image](https://user-images.githubusercontent.com/118715799/226117165-4cc4819d-d9ec-4a9b-9398-c4edeb7b7a90.png)

The Kruskal-Wallis test is used to test the difference between 3 or more independent population (Normal Weight, OverWeight, Obese). Based on Figure 7, the p-value is 0.0045 and less than the alpha value (0.05). The null hypothesis is rejected and conclude the three populations is differ.

![image](https://user-images.githubusercontent.com/118715799/226118501-754bfa54-6629-4c1f-a4c5-4866145e1450.png)

The Spearman's Correlation is used to test the correlation. Based on Figure 8, BMI and Diastolic Blood Pressure have strong positive correlation (0.79954) while Systolic Blood Pressure and Diastolic Blood Pressure have very strong positive correlation (0.87072).

![image](https://user-images.githubusercontent.com/118715799/226118582-082cb1a3-4da6-45b7-899b-715fd4c6c8d9.png)


View the SAS script of the non-parametric tests [here](https://github.com/seuwenfei/Nonparametric-tests/blob/main/NonParametric.sas).
