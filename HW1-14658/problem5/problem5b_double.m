function problem5b_double()
    A = (1:150);
    B = (1:150);
    for i=1:150
        B(i) = (problem5b(i));
    end
    plot(A,B);
end