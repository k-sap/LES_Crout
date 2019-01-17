function[result] = determinantof(A)
[U, L] = decomposition(A);
result = prod(L(1, :));
end