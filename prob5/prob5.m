n = 11;
fp = fopen('prob5/error-values', 'w');
% Avoid calculating binCoeff twice when inequality occurs
% Precision: exponential notation upto 6 digits after the decimal
while n < 50
    coeffVal = binCoeff(n, n);
    if coeffVal ~= 1
        fprintf(fp, 'Value: %d, error: %e\n', n, 1-coeffVal);
    end
    n = n + 1;
end
fclose(fp);