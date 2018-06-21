
* Heteroskedasticity

* Importing the data 
use xxx, clear

* Using regress function in Stata 
regress variable1 variable2 

* Plotting the data and the estimated regression line
graph twoway (scatter variable1 variable2) (lfit variable1 variable2)

* Detecting heteroskedasticity in a model
regress variable1 variable2 
predict ehat, res
graph twoway scatter ehat variable2 , yline(0)

* Plotting the relationship between the magnitude of the residuals and the independent variable
generate abs_e = abs(ehat)
twoway (scatter abs_e variable2 (lowess abs_e variable2, lw(thick))


* Lagrange Multiplier Tests
use xxx, clear
quietly regress variable1 variable2 
predict ehat, residual
gen ehat2=ehat^2
quietly regress ehat2 variable2 
di "NR2 = " e(N)*e(r2)
di "5% critical value = " invchi2tail(e(df_m),.05)
di "P-value = " chi2tail(e(df_m),e(N)*e(r2))

* Tests for heteroskedasticity/Information matrix test
quietly regress variable1 variable2 
estat hettest variable2, iid
estat imtest, white

* The Goldfeld-Quandt test
use xxx, clear
regress variable1 variable2 variable3 variable4

regress variable1 variable2 variable3 if variable4 == 0
scalar rmse_r = e(rmse)
scalar df_r = e(df_r)

regress variable1 variable2 variable3 if variable4 == 1
scalar rmse_r = e(rmse)
scalar df_r = e(df_r)

scalar GQ = rmse_m^2/rmse_r^2
scalar crit = invFtail(df_m,df_r,.05)
scalar pvalue = Ftail(df_m,df_r,GQ)
scalar list GQ pvalue crit
