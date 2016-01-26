function problem1

% Computes the polynomial value at specified (x, n)
    function val = evalPoly(x, n)
        val = 0;
        sign = 1;   % 1: +ve; -1: -ve;

        if mod(n, 2) ~= 0
            sign = -sign;
        end

        while n > 0
            val = val + (x * sign/(2*n + 1)) - sign/(2*(n-1) + 1);
            n = n - 1;
            sign = -sign;
        end
    end

    % Single entry in the table
    computeCol1 = @(n) abs(pi - 6*evalPoly(1/sqrt(3), n)) / pi;
    computeCol2 = @(n) abs(pi - 4*evalPoly(1, n)) / pi;

    x = 8;
    while x <= 4096
        fprintf('%5d  %e  %e\n', x, computeCol1(x), computeCol2(x));
        x = x*2;
    end

end
