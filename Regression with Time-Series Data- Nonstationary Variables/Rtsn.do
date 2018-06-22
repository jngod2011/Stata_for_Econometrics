* Regression with Time-Series Data- Nonstationary Variables

* Importing Data
use xxx, clear 

* Creating Dates and Declaring time-series 
generate date = q(1369q1) + _n-1
format date %tq
tsset date

* Augmented Dickey Fuller Regressions
regress D.f L.f L.D.f
regress D.b L.b L.D.b

* Augmented Dickey Fuller Regressions with built in functions
dfuller f, regress lags(1)
dfuller b, regress lags(1)

* Augmented Dickey Fuller on differences
dfuller D.f, noconstant lags(0)
dfuller D.b, noconstant lags(0)

* DF-GLS tests (Unit Root Testing)
dfgls f
dfgls b

* Phillips-Perron tests
pperron f, regress trend
pperron b, regress trend

* Engle Granger cointegrations test
regress b f
predict ehat, residual
regress D.ehat L.ehat L.D.ehat, noconstant

