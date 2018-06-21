
* Regression with Time-Series Data: Stationary Variables

* Durbin Watson test

* Importing Data
use xxx, clear

* Converting Data
generate date = tq(1369q1) + _n-1
format %tq date
tsset date

regress variable1 variable2
estat dwatson
