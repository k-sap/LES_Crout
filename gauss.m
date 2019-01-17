function[x] = gauss(A, b)
[U, L] = decomposition(A);

%Uy=b
bsize = size(b);
y = zeros(bsize);
n = bsize(1);

y(n, :) = b(n, :);
for i = n-1:-1:1 
y(i, :) = b(i, :) - U(i)*y(i+1, :);
end

x = zeros(bsize);
x(1, :) = y(1, :)/L(1, 1);
for i = 2:n
x(i, :) = (y(i, :) - L(2, i-1) * x(i-1, :))/L(1, i);
end
end
% function[result] = substitution(M, b)
% 
% end