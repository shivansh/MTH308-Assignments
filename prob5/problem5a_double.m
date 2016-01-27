function problem5a_double
    mem = zeros(2,50);
    for i = 3:3:200
        M = problem5(i);
        mem(1,i) = M(i+1);
        mem(2,i) = max(M);   % storing the largest value
    end
    x = (3:3:150);
    plot(x, abs(1 - mem(1,x)));
end