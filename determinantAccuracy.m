%sprawdzenie wyznacznika
n = 100;
err = zeros(1, n);
for i = 1:n
i
A = rand(3, 1000);
our_result = determinantof(A);
mat_result = det(diagToNorm(A));
err(i) = (our_result-mat_result)/mat_result;
end
mean(err)