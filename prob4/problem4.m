function problem4
    fib = [1 1];
    for x = 1:100
        fib(x+2) = fib(x+1) + fib(x);
    end

    pib = [1 1];
    c = 1 + sqrt(3)/100;
    for x = 1: 100
        pib(x+2) = c*pib(x+1) + pib(x);
    end

    x = 1: 1: 102;
    semilogy(x, fib, x, pib, 'r');
end