function[result] = normToDiag(A)
A_size = size(A);
n = A_size(1);
result = zeros(3, n);
for i = 1:n
    result(2, i) = A(i, i);
end
for i = 1:n-1
    result(1, i) = A(i, i+1);
    result(3, i) = A(i+1, i);
end
end