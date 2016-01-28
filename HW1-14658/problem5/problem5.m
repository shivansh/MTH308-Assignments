function val = problem5(n)
    mem = zeros(1, n+1);    % array used for memoization
    mem(1) = 1;
    for i = 2:(n+1)
        mem(i) = mem(i-1) * (n-i+2) / (i-1);
    end
    val = mem;
end
