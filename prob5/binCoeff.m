function val = binCoeff(n, k)
if k == 0
    val= 1;
elseif k == 1
    val = n;
else
    val = ((n - k + 1)/k) * binCoeff(n, k - 1);
end