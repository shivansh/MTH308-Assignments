function Problem3b(x)
    count = 1;
    f = 0.447;      % Initial value of f
    fprintf('step      x           f(x)\n');
    fprintf('----  -----------  ----------\n');
    fprintf('%3i %12.8f %12.8f\n',count,x,f);
    xvec = zeros(5, 1);
    fvec = zeros(5, 1);
    while ( count <= 5 )
        fprime = 1/(1 + x^2)^(3/2);
        xnew = x - (f/fprime);
        x = xnew;
        f = x/sqrt(1 + x^2);
        xvec(count) = x;
        fvec(count) = f;
        fprintf('%3i %12.8f %12.8f\n',count,x,f);
        count = count + 1;
    end
    plot(xvec, fvec);
end