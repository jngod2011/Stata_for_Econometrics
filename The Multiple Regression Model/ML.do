* The Multiple Regression Model 

* 90% confidence intervals
regress variable1 variable2 variable3, level(90)

* Confidence interval for a linear combination of parameters
lincom -0.3*variable1+0.9*variable2, level(90)

* Using Algebra to compute a linear combination of parameters
matrix cov=e(V)
scalar lambda = -0.3*_b[variable1]+0.9*_b[variable2]
scalar var_lambda = (-0.3)^2*cov[1,1]+(0.9)^2*cov[2,2]+2*(-0.3)*(0.9)*cov[1,2] 
scalar se = sqrt(var_lambda) 
scalar t = lambda/se
scalar lb = lambda-invttail(e(df_r),.05)*se 
scalar ub = lambda+invttail(e(df_r),.05)*se

* Listing a linear combination of parameters 
 scalar list lambda var_lambda se t lb ub

 
* Hypothesis Tests 
* t-ratios
scalar t1 = (_b[variable1]-0)/_se[variable1]
scalar t2 = (_b[variable2]-0)/_se[variable2]
scalar list variable1 variable2

* pvalues
scalar p1 = 2*ttail(72,abs(t1))
scalar p2 = ttail(72,abs(t2))
scalar list p1 p2

* One-sided tests
scalar t1 = (_b[price]-0)/_se[price]
scalar crit = -invttail(e(df_r),.05)
scalar pval = 1-ttail(e(df_r),t1)
