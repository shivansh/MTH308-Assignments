function Problem4(n)
    H = (n);          % Hilbert matrix of order n
    for i = 1:n
        for j = 1:n
            H(i,j) = 1/(i+j-1);
        end
    end
    x = 1:n;
    x = x';            % n-vector with all components 1
    b = H * x;

    x = 1:n;
    x = x';
    for i = n:-1:1
        x(i) = b(i);
        for j = n:-1:i+1
            x(i) = x(i) - H(i,j)*x(j);
        end
        x(i) = x(i)/(H(i,i));
    end
    disp(H*x);
    r = b - H*x;
    disp(max(r));      % infinity norm
    x1 = ones(n,1);
    d = x - x1;        % delta(x)
    disp(d);
    disp(max(d));      % infinity norm
end
