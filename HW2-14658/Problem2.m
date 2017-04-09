function Problem2(n)
    c = zeros(n,1);
    v = zeros(n,1);
    H = zeros(n);
    for i=n:-1:1
        v(i) = c(i);
        for j=n:-1:i
            v(i) = v(i) - H(i,j)*v(j);
        end
        v(i) = v(i)/H(i,i);
    end
end