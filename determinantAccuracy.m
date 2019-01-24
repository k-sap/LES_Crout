function[WskUwarunkowania_agr,err_agr] = determinantAccuracy(n,trial)
%sprawdzenie wyznacznika
n = 100;
err = zeros(trial, n);
err_agr=zeros(1,n);
WskUwarunkowania_agr=zeros(1,n)
WskUwarunkowania=zeros(trial,n)

for i = 1:n
    i
    for j=1:trial
A = rand(3, n);
our_result = determinantof(A);
mat_result = det(diagToNorm(A));
err(j,i) = (our_result-mat_result)/mat_result;
WskUwarunkowania(j,i)=cond(A);
    end
    err_agr(i)=mean(abs(err(:,i)));
    WskUwarunkowania_agr(i)=mean(WskUwarunkowania(:,i))
end

end