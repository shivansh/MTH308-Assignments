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