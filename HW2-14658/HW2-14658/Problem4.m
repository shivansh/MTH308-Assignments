function Problem4()
    result = zeros(100,2);
    cond = zeros(100,1);
    correctVals=zeros(100,1);
    for n=1:2
        H = (n);          % Hilbert matrix of order n
        for i = 1:n
            for j = 1:n
                H(i,j) = 1/(i+j-1);
            end
        end
        x = ones(1,n);
        x = x';            % n-vector with all components 1
        b = H * x;
        new_x = GaussElim(H,b);
        r = b - H * new_x;

        d = x - new_x;   % delta(x)
        temp = sum(d==zeros(n,1));
        result(n,1)=max(r);
        result(n,2)=max(d);
        cond(n)=condition(H);
        correctVals(n)=temp;
    end
    N=[1:100];
    figure(1)
    plot(N,result(N,1));
    figure(2)
    plot(N,result(N,2));
    figure (3)
    plot(N,cond(N));
    figure (4)
    plot(N,correctVals(N));
    figure (5)
    plot(correctVals(N),cond(N));

end
