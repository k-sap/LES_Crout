function[inverse] = invers(A)
Asize = size(A);
n = Asize(1);
b = eye(n);
inverse = gauss(A, b);
end