%% b -wektor
n = 100;
err = zeros(1, n);
for i = 1:n
i
A = 100*rand(3, 1000);
b = 100*rand(1000, 1);
our_result = gauss(A, b);
mat_result = linsolve(diagToNorm(A), b);
err(i) = max(abs(our_result-mat_result));
end
mean(err)

%% b - macierz
%% b -wektor
n = 10;
err = zeros(1, n);
for i = 1:n
i
A = 100*rand(3, 1000);
b = 100*rand(1000, 1000);
our_result = gauss(A, b);
mat_result = linsolve(diagToNorm(A), b);
err(i) = norm(our_result-mat_result)/norm(mat_result);
end
mean(err)