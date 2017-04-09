e = zeros(5,1);
for i = 0:2:8
    e(i/2 + 1) = 1.0*(10^(-i));
end

Cond_1 = zeros(1,5); Cond_2 = zeros(1,5); R_Error = zeros(5,2);
for j = 1:5
    M = [1 1+e(j); 1-e(j) 1];
    b = [1+(1+e(j))*e(j) 1];
    x_true = [1 e(j)];
    x_gauss = (GaussElim(M,b.')).';
    [Cond_1(1,j),Cond_2(1,j)] = problem2(M);
    R_Error(i,:) = RelErr(x_gauss,x_true);
end