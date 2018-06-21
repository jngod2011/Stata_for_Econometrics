
* Regression with Panel Data

* Importing Data
use xxx, clear

* Summarizing Data 
xtset variable1 variable2 
describe
summarize variable1 variable2 variable3 variable4
list variable1 variable2 variable3 variable4 in 1/10

* OLS Model
reg variable1 variable2 variable3 variable4

* OLS Model with cluster robust standard errors
reg variable1 variable2 variable3 variable4, vce(cluster id)



* Pooled model
reg variable5 variable6 variable7 variable8
scalar sse_r = e(rss)

* F-test: using sums of squared residuals
scalar f = (sse_r - sse_u)/(9*sig2u)
scalar fc = invFtail(9,df_u,.05)
scalar pval = Ftail(9,df_u,f)
di "F test of equal intercepts = " f
di "F(9,df_u,.95) = " fc
di "p value = " pval
