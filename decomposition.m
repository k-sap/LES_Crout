% function [U, L] = decomposition(A)
% j = length(w2);
% U = zeros(1, j);
% L = zeros(2, j);
% L(2, :) = w3;
% L(1, j) = w2(j);
% for i = j-1:-1:1
%     U(i) = w1(i)/L(1, i+1);
%     L(1, i) = w2(i)-U(i)*L(2, i);
% end
% end
function [U, L] = decomposition(A)
%"helllo"
%rozklad UL%
j=size(A);
U=zeros(1,j(2));
L=zeros(2, j(2));
L(2,:)=A(3,:);
L(1,j(2))=A(2,j(2));
for i = j(2)-1:-1:1
    U(i)=A(1,i)/L(1,i+1);
    L(1,i)=A(2,i)-U(i)*L(2,i);
end


end
