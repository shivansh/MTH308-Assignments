function main()
    X    = @(t) 2*cos(2*pi*t);
    Y    = @(t) 3*sin(2*pi*t);
    dXdt = @(t) -4*pi*sin(2*pi*t);
    dYdt = @(t) 6*pi*cos(2*pi*t);
    x0  = 1;
    y0  = 7;
    eps = 0.00001;
    orthoProjectionOnCurve(x0, y0, X, Y, dXdt, dYdt, eps);
end
