*David Li 

* Further Inference in the Multiple Regression Model

* Importing the data 
use xxx, clear

* Using regress function in Stata to estimate the unrestricted model (Interaction term)
regress variable1 variable2 variable3 c.variable3#c.variable3

* sum of squared errors and the residual degrees of freedom
scalar sseu = e(ssr)
scalar df_unrest = e(df_r)

* imposing the restriction on the model and reestimate it using least squares
regress variable1 variable2

* sum of squared errors and the residual degrees of freedom (restricted model)
scalar sser = e(ssr)
scalar df_rest = e(df_r)

* F-statistic
scalar J = df_rest - df_unrest
scalar fstat = ((sser-sseu)/J)/(sseu/(df_unrest))
scalar crit1 = invFtail(J,df_unrest,.05)
scalar pvalue = Ftail(J,df_unrest,fstat)
scalar list sseu sser J df_unrest fstat pvalue crit1

* Testing restrictions on the parameters of the model
regress variable1 variable2 variable3 c.variable3#c.variable3
testparm variable3 c.variable3#c.variable3
test (variable3=0)(c.variable3#c.variable3=0)
test (_b[variable3]=0)(_b[c.variable3#c.variable3]=0)

* Significance of the unrestricted model 
regress variable1 variable2 variable3 c.variable3#c.variable3
scalar sseu = e(rss)
scalar df_unrest = e(df_r)

* restricted model
regress variable1
scalar sser = e(rss)
scalar df_rest = e(df_r)
scalar J = df_rest - df_unrest

* F-statistic, critical value, pvalue
scalar fstat = ((sser -sseu)/J)/(sseu/(df_unrest))
scalar crit2 = invFtail(J,df_unrest,.05)
scalar pvalue = Ftail(J,df_unrest,fstat)

* Relationship between t and F
regress variable1 variable2 variable3 c.variable3#c.variable3
scalar sseu = e(rss)
scalar df_unrest = e(df_r)
scalar tratio = _b[variable2]/_se[variable2]
scalar t_sq = tratio^2

* Restricted Regression
regress variable1 variable3 c.variable3#c.variable3
scalar sser = e(rss)
scalar df_rest = e(df_r)
scalar J = df_rest - df_unrest

* F-statistic, critical value, pvalue
scalar fstat = ((sser -sseu)/J)/(sseu/(df_unrest))
scalar crit = invFtail(J,df_unrest,.05)
scalar pvalue = Ftail(J,df_unrest,fstat)
scalar list sseu sser J df_unrest fstat pvalue crit tratio t_sq
