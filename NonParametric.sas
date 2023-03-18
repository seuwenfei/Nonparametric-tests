libname status xlsx '/home/u63347108/WeightStatus/WeightStatus.xlsx';

title 'Patient Health Status';

proc sql;
create table healthstatus as
	select * from status.BioInfo
		natural join status.HealthStatus;
quit; 

proc print data=healthstatus;
run;

proc SGPLOT data=healthstatus;
title2 color='brown' 'Determining Normality for BMI' ;
histogram BMI;
density BMI;
run;

proc SGPLOT data=healthstatus;
title2 color='brown' 'Determining Normality for Systolic Blood Pressure' ;
histogram SystolicBP;
density SystolicBP;
run;
proc UNIVARIATE data=healthstatus normal; /* Shapiro-Wilk Test */
title2 color='brown' 'Shapiro-Wilk Test' ;
var BMI SystolicBP;
run;

proc NPAR1WAY data=healthstatus wilcoxon;  /* Wilcoxon Rank Sum Test */
title2 color='ligb' 'Difference between 2 Independent Population' ;
title3 color='brown' 'Wilcoxon Rank Sum Test' ;
class Diabetes;
var BMI; 
exact;
run; /* Test for difference in median, with the assumption of identical spread */

proc NPAR1WAY data=healthstatus ab;  /* Ansari-Bradley Test */
title3 color='brown' 'Ansari-Bradley Test' ; 
class Diabetes; 
var BMI;
run;	/* Test for difference in spread, with the assumption of identical median */

proc NPAR1WAY data=healthstatus edf;  /* Kolmogorov-Smirnov Test */
title3 color='brown' 'Kolmogorov-Smirnov Test' ;
class Diabetes;
var BMI;
exact;
run; /* Test for overall difference between 2 group */

proc NPAR1WAY data=healthstatus wilcoxon;  /* Kruskal-Wallis Test */
title2 color='ligb' 'Difference between 3 or More Independent Population' ;
title3 color='brown' 'Kruskal-Wallis Test' ;
class WeightStatus;
var SystolicBP;
exact;
run; /* Test for overall difference between 2 group */

proc CORR data=healthstatus spearman;  /* Spearman's Correlation Test */
title2 color='ligb' 'Testing Correlations' ;
title3 color='brown' "Spearman's Correlation Test" ;
var Age MealsADay SystolicBP DiastolicBP BMI;
run;

proc FREQ data=healthstatus;  /*Chi-Square Goodness of Fit test*/
title2 color='ligb' 'Testing Goodness of Fit' ;
title3 color='brown' "Chi-Square Test" ;
tables Gender*Vegetarian / chisq;
run;