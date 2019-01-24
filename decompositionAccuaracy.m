


A=[1 1 1 1 0;1 2 3 4 5;2 2 2 2 0]
[U,L]=decomposition(A)
multiplication([U;ones(size(U));zeros(size(U))],[zeros(size(U));L])
diagToNorm([U;ones(size(U));zeros(size(U))])*diagToNorm([zeros(size(U));L])

for i=1:10
    A=rand(3,20);
    [U,L]=decomposition(A);
    result=multiplication([U;ones(size(U));zeros(size(U))],[zeros(size(U));L]);
    norm(diagToNorm(A)-diagToNorm([U;ones(size(U));zeros(size(U))])*diagToNorm([zeros(size(U));L]))
end