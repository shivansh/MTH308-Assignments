function prob3
x = 1;
evalRec = @(j, k) sin(x + (j - k)*(pi/3));
compute_eK = @(k) abs(evalRec(1, 0) - evalRec(1, k));

x = (1:0.1:60);
y = compute_eK(x);
plot(x, y)

end
