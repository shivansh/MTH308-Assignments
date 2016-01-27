function val = problem5_single(n)
    a = single(problem5(n));
    for i = 0:n
        a(i+1)= single(a(i+1) * i);
    end
    E = single(sum(a) / 2^n);
    val = single(abs(E - n/2));
end