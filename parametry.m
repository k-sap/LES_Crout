% A=BC

cond(A)

%blad rozkladu
e_dc = norm(A-BC)/norm(A)

%blad wzgledny
e_rel = norm(x-z)/norm(z)

%wspolczynnik stabilnosci
wsp_stabl = norm(x-z)/(norm(z)*cond(A))

% wspolczynnik poprawnosci
wsp_popr = norm(b - Ax)/(norm(A)*norm(x))

%wspolczynniki do odwracania
r_r = norm(AX-eye())/(norm(A)*norm(X))

r_l = norm(XA-eye())/(norm(A)*norm(X))


