% Single entry in the table
computeEntry = @(n) abs(pi - 6 * evalPoly(1/sqrt(3), n)) / pi;

x = 8;
while x <= 4096
    fprintf('%5d %f\n', x, computeEntry(x));
    x = x*2;
end