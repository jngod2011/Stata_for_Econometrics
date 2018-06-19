* Introducing Stata 

* Creating a log file to store output 
log using stata_output.txt, text replace

clear all
set more off 

* Changing working directory 
cd "C:\Users\abc\Desktop"

* Reading data (three ways)
* Importing data from Stata (.dta) file 
use xxx, clear 
* Importing data from the internet 
use http://www.xxx.com/abc/xxx, clear 
* Importing data csv 
insheet using xxx.csv, clear

* Summarizing the data
describe 
summarize 
list variable1 in 1/20
summarize variable2 in 1/50, detail
summarize variable1 variable2 variable3 variable4
summarize if variable2 <= 10000
summarize variable1 if variable2 == 7


* Graphing the data (histogram/bar/pie/scatter/matrix)
 histogram variable1 variable2 variable3 variable4
 graph bar (mean) variable1 (mean) variable2 (mean) variable3 (mean) variable4
 graph pie variable1 variable2 variable3 variable4
 twoway (qfit variable1 variable2) (scatter variable1 variable2, sort yaxis(2))
 graph matrix variable1 variable2 variable3 variable4
 
* Correlation Matrix 
correlate variable1 variable2 variable3 variable4

* Regression
reg variable1 variable2 variable3 variable4

log close 
