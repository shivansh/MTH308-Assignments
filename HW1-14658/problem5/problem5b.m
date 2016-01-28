function val = problem5b(n)
    a = problem5(n);
    for i = 0:n
        a(i+1)= a(i+1) * i;
    end
    E = sum(a) / 2^n;
    val = abs(E - n/2);
end