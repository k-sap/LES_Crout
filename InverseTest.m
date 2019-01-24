function[WskUwarunkowania_agr,bladL_agr,bladR_agr,bladL_agr_mat,bladR_agr_mat] = InverseTest(n,trial)

WskUwarunkowania = zeros(trial,n);
bladR = zeros(trial,n);
bladL = zeros(trial,n);

bladR_mat = zeros(trial,n);
bladL_mat = zeros(trial,n);

WskUwarunkowania_agr = zeros(1,n);

bladR_agr = zeros(1,n);
bladL_agr = zeros(1,n);

bladR_agr_mat = zeros(1,n);
bladL_agr_mat = zeros(1,n);

for i=1:n
    i
    for j=1:trial
    A=20*rand(3,i);
    %A = normrnd(0,20, [3, i]);
    A_ = diagToNorm(A);
    WskUwarunkowania(j, i) = cond(A_);
    A_inv = invers(A);
    A_inv_mat = inv(A_);
    %wspolczynniki do odwracania
    bladR(j,i) = norm(A_*A_inv-eye(i))/(norm(A_)*norm(A_inv));
    bladL(j,i) = norm(A_inv*A_-eye(i))/(norm(A_)*norm(A_inv));
    
    bladR_mat(j,i) = norm(A_*A_inv_mat-eye(i))/(norm(A_)*norm(A_inv_mat));
    bladL_mat(j,i) = norm(A_inv_mat*A_-eye(i))/(norm(A_)*norm(A_inv_mat));
    
    end
    WskUwarunkowania_agr(i) = mean(WskUwarunkowania(:, i));
    bladL_agr(i) = mean(bladL(:, i));
    bladR_agr(i) = mean(bladR(:, i));
    bladL_agr_mat(i) = mean(bladL(:, i));
    bladR_agr_mat(i) = mean(bladR(:, i));
end

end