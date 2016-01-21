n = 0;
fp = fopen('prob5/error-values', 'w');
while n < 100
    % Avoid calculating binCoeff twice when inequality occurs
    coeffVal = binCoeff(n, n);
    if coeffVal ~= 1
        fprintf(fp, 'Ineqality at %d, value: %d\n', n, coeffVal);
    end
    n = n + 1;
end