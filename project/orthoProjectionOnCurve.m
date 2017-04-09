% Orthogonal projection on a curve for a given point
%
% Function signature: returns the point on the curve
% which is closest to the given point (x0, y0).

function orthoProjectionOnCurve(x0, y0, X, Y, dXdt, dYdt, eps)
    a = 0.001;
    % f(t) = (distance)^2
    dist = @(t) (X(t) - x0)^2 + (Y(t) - y0)^2;

    % Take initial value of t0 and compute the corresponding distance
    % Since the period of the given parametric curve is 1, the relevant
    % range of values of t is 0.0...0.9
    t0 = 0.0;
    d = dist(0.0);
    for t_iter = 0.1: 0.1: 0.9
        temp = dist(t_iter);
        if (temp < d)
            t0 = t_iter;
            d = temp;
        end
    end

    % fprintf('d: %i; t0: %i\n', d, t0);

    x_prime = @(t) 2*(X(t) - x0)*dXdt(t);
    y_prime = @(t) 2*(Y(t) - y0)*dYdt(t);
    grad_f =  @(t) x_prime(t) + y_prime(t);

    % Stop when difference between consecutive "y" is within eps
    % We limit the number of iterations to 40
    count = 0;

    while ( a*abs(grad_f(t0)) > eps && count < 40)
        t0 = t0 - a*grad_f(t0);
        count = count + 1;
    end

    fprintf('t: %i\n', t0);
end
