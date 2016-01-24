function prob5

    function val = binCoeff(n, k)
        if k == 0
            val= 1;
        elseif k == 1
            val = n;
        else
            val = ((n - k + 1)/k) * binCoeff(n, k - 1);
        end
    end

n = 11;
fp = fopen('prob5/error-values', 'w');

% Precision: exponential notation upto 6 digits after the decimal
while n < 50
    coeffVal = binCoeff(n, n);    % Avoid calculating binCoeff twice when inequality occurs
    if coeffVal ~= 1
        fprintf(fp, 'Value: %d, error: %e\n', n, 1-coeffVal);
    end
    n = n + 1;
end
fclose(fp);

end
