function [WskUwarunkowania_agr, BladRozkladu_agr,BladWzgledny_agr,WspStabilnosci_agr, WspPoprawnosci_agr] = AccuracyTest(n, trial)

%macierze parametrow
WskUwarunkowania = zeros(trial,n);
BladRozkladu = zeros(trial,n);
BladWzgledny = zeros(trial,n);
WspStabilnosci = zeros(trial,n);
WspPoprawnosci = zeros(trial,n);

%agregacja parametrow
WskUwarunkowania_agr = zeros(1,n);
BladRozkladu_agr = zeros(1, n);
BladWzgledny_agr = zeros(1,n);
WspStabilnosci_agr = zeros(1,n);
WspPoprawnosci_agr = zeros(1,n);

for i=1:n
    i
    for j=1:trial
    A=20*rand(3,i);
    %A = normrnd(0,20, [3, i]);
    b = rand(i);
    [U,L]=decomposition(A);
    x = gauss(A, b);
    A_ = diagToNorm(A);
    WskUwarunkowania(j, i) = cond(A_);
    %blad rozkladu|
    UL = multiplication([U;ones(size(U));zeros(size(U))],[zeros(size(U));L]);
    UL = diagToNorm(UL);

    BladRozkladu(j, i) = norm(A_-UL)/norm(A_);
    %blad wzgledny
    BladWzgledny(j, i) = norm(x-b)/norm(b);
    %wspolczynnik stabilnosci
    WspStabilnosci(j, i) = norm(x-b)/(norm(b)*cond(A_));
    % wspolczynnik poprawnosci
    WspPoprawnosci(j, i) = norm(b - A_*x)/(norm(A_)*norm(x));
    end
    WskUwarunkowania_agr(i) = mean(WskUwarunkowania(:, i));
    BladRozkladu_agr(i) = mean(BladRozkladu(:, i));
    BladWzgledny_agr(i) = mean(BladWzgledny(:, i));
    WspStabilnosci_agr(i) = mean(WspStabilnosci(:, i));
    WspPoprawnosci_agr(i) = mean(WspPoprawnosci(:, i));
    
end

end

