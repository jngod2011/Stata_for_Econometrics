* Linear Regression Part 1

clear all
set off more

* Changing working directory 
cd "C:\Users\abc\Desktop"

* Importing data from Stata (.dta) file 
use xxx, clear 

* Summarizing the data
describe 
summarize 
summarize variable1 variable2 variable3 variable4

* Transforming the data using log and plot its histogram
generate lvariable2 = ln(variable2)
histogram lvariable2, percent
graph save lvariable2, replace

* Global Variable
global ylist variable1
* Simple Regression 
global x1list lvariable2 
* Multiple Regression
global xlist lvariable2 variable3 variable4

* Summarizing the data
describe $ylist $xlist 
summarize $ylist $xlist
summarize $x1list, detail

* Plotting the data
graph twoway (scatter $ylist $x1list)

/* Simple Regression 
reg variable1 lvariable2 variable3 variable4 */

/* Covariance matrix of coefficients of regress model
estat vce */

* Simple Regression (Creating ANOVA Table)
reg $ylist $x1list

* Plotting a regression line 
graph twoway (scatter $ylist $x1list)(lfit $ylist $x1list)

* Predicted Values for the explanatory variable
predict yp, xb
summarize $ylist yp
graph twoway (scatter $ylist $x1list)(scatter yp $x1list)

* Regression Residuals 
predict e1hat, resid
summarize e1hat
graph twoway (scatter e1hat $x1list)

* Hypothesis testing 
test $x1list

* Marginal effects 
quietly reg $ylist $x1list
margins, dydx(*) atmeans
margins, dydx(*)

* Multiple regression (ANOVA Table)
reg $ylist $xlist

* Predicted values for the dependent variable
predict re1p, xb
summarize $ylist yhat

* Regression residuals
predict ehat, resid
summarize ehat

* Hypothesis testing 
test $xlist

* Marginal effects 
margins, dydx(*) atmeans
margins, dydx(*)
