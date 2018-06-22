* Principal Component Analysis 

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

* Principal component analysis (PCA)
pca $xlist

* Scree plot of the eigenvalues
screeplot
screeplot, yline(1)

* Principal component analysis
pca $xlist, mineigen(1)
pca $xlist, comp($ncomp) 
pca $xlist, comp($ncomp) blanks(.3)

* Component rotations
rotate, varimax
rotate, varimax blanks(.3)
rotate, clear

rotate, promax
rotate, promax blanks(.3)
rotate, clear

* Scatter plots of the loadings and score variables
loadingplot
scoreplot
scoreplot, mlabel($id)

* Loadings/scores of the components
estat loadings
predict pc1 pc2 pc3 pc4 pc5, score

* Kaiser Meyer Olkin (sampling adequacy)
estat kmo
