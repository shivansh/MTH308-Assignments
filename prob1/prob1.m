function prob1

% Computes the polynomial value at specified (x, n)
    function val = evalPoly(x, n)
        val = 0;
        sign = 1;   % 1: +ve; -1: -ve;

        if mod(n, 2) ~= 0
            sign = -sign;
        end

        while n > 0
            coeff = sign/(2*n + 1);
            val = val + (x*coeff) + 1/(2*(n-1) + 1);      % a(0) is taken care of
            sign = -sign;
            n = n - 1;
        end
    end

% Single entry in the table
computeEntry = @(n) abs(pi - 6 * evalPoly(1/sqrt(3), n)) / pi;

x = 8;
while x <= 4096
    fprintf('%5d %f\n', x, computeEntry(x));
    x = x*2;
end

end
