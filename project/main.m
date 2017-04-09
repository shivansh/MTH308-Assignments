function main()
    X    = @(t) 2*sin(2*pi*t);
    Y    = @(t) 3*sin(2*pi*t);
    dXdt = @(t) 4*pi*cos(2*pi*t);
    dYdt = @(t) 6*pi*cos(2*pi*t);
    x0  = 2;
    y0  = 7;
    eps = 0.00001;
    tic
    orthoProjectionOnCurve1(x0, y0, X, Y, dXdt, dYdt, eps);
    toc
end
