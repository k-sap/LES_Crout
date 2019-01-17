function[result] = multiplication(A, B)
n_a = size(A);
n_a = n_a(2);
n_b = size(B);
result = zeros(n_a);
% A_m = zeros(n_a); %A_matrix
% B_m = zeros(n_a);
% for i = 1:n_a-1
%     A_m(i, i+1) = A(i)
%     A_m(i+1,i) =  
% end
result = zeros(3, n_a);
result(2, 1) = A(2, 1) * B(2, 1) + A(1, 1) * B(3, 1);
for i = 2:n_a
    result(2, i) = A(2, i) * B(2, i) + A(3, i-1) * B(1, i-1) + A(1, i)* B(3, i);
end
for i = 1: n_a-1
result(1, i) = A(2, i) * B(1, i) + A(1, i) * B(2, i+1);
result(3, i) = A(2, i+1) * B(3, i) + A(3, i) * B(2, i);
end  
end