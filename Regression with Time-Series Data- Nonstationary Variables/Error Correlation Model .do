* Error Correlation Model (Checking Cointegration)
gen Db=D.b
nl(Db = -{alpha}*(L.b-{beta1}-beta2}*L.f)+ {delta0}*D.f+{delta1}*D.L.f), variables(L.b L.f D.L.f)

scalar theta1 = 1-_b[alpha:_cons]
scalar list theta1

gen ehat = L.b - _b[beta1:_cons]-_b[beta2:_cons]*L.f
reg D.ehat L.ehat L.D.ehat, noconst
di di _b[L.ehat]/_se[L.ehat]
