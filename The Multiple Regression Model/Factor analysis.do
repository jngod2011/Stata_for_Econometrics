
* Factor analysis

* Changing working directory 
cd "C:\Users\abc\Desktop"

* Importing data from Stata (.dta) file 
use xxx, clear 

* Setting global Variable 
global xlist variable1 variable2 variable3 variable4 variable5 variable6 variable7 variable8 variable9
global id County
global ncomp 5

* Summarizing data 
describe $xlist
summarize $xlist
corr $xlist

* Factor analysis
factor $xlist

* Scree plot of the eigenvalues
screeplot
screeplot, yline(1)

* Factor analysis
factor $xlist, mineigen(1)
factor $xlist, factor($ncomp) 
factor $xlist, factor($ncomp) blanks(0.3)

* Factor rotations
rotate, varimax 
rotate, varimax blanks(.3)
rotate, clear

rotate, promax
rotate, promax blanks(.3)
rotate, clear

estat common

* Scatter plots
loadingplot
scoreplot

* Scores of the components
predict f1 f2 f3 f4 f5 

* Kaiser Meyer Olkin (sampling adequacy)
estat kmo

* Average interitem covariance
alpha $xlist
