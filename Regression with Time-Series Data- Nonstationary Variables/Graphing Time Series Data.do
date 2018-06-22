* Regression with Time-Series Data- Nonstationary Variables

* Importing Data
use xxx, clear 

* Creating Dates and Declaring time-series 
generate date = q(1369q1) + _n-1
format date %tq
tsset date

* Extracting dates (Year/Quarter) 
gen double newdate = dofq(date)
gen y = year(newdate)
gen q = quarter(newdate)
list date y q in 1/9

* Graphing Time-Series Data 
qui tsline variable1, name(variable1, replace)
qui tsline D.variable1, name(dvariable1, replace)
graph combine variable1 dvariable1
qui tsline variable2, name(variable2, replace)
qui tsline D.variable2, name(dvariable2, replace) yline(0)
qui tsline variable3, name(variable3, replace)
qui tsline D.variable3, name(dvariable3, replace) yline(0)
qui tsline variable4, name(variable4, replace)
qui tsline D.variable4, name(dvariable4, replace) yline(0)
graph combine variable2 dvariable2 variable3 dvariable3 variable4 dvariable4, cols(2)



