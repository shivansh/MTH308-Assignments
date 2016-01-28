function problem5b_single
    A = (1:150);
    B = (1:150);
    for i=1:150
        B(i) = (problem5_single(i));
    end
    plot(A,B);
end