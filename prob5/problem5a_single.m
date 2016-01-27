function problem5a_single
    mem = zeros(2,50);
    for i = 3:3:200
        M = problem5(i);
        mem(1,i) = M(i+1);
        mem(2,i) = single(max(M));   % storing the largest value
    end
    x = (3:3:150);
    plot(x, single(abs(1 - mem(1,x))));
end