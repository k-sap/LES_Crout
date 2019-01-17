function[x] = diagToNorm(A)
Asize = size(A);
x = zeros(Asize(2));
for i = 1:Asize(2)
    x(i, i) = A(2, i);
end

for i = 1:Asize(2)-1
    x(i, i+1) = A(1, i);
    x(i+1, i) = A(3, i);
end

end
