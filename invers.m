function[inverse] = invers(A)
Asize = size(A);
n = Asize(2);
b = eye(n);
inverse = gauss(A, b);
end