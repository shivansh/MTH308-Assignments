% Orthogonal projection on a curve for a given point
%
% Function signature: returns the point on the curve
% which is closest to the given point (x0, y0).
%
% Name: Shivansh Rai
% Roll: 14658

function orthoProjectionOnCurve(x0, y0, X, Y, dXdt, dYdt, eps)
    a = 0.001;
    % f(t) = (distance)^2
    dist = @(t) (X(t) - x0)^2 + (Y(t) - y0)^2;

    % Take initial value of t0 and compute the corresponding distance
    % Since the period of the given parametric curve is 1, the safe
    % range of values of t is 0.0...0.9
    t0 = 0;
    d = dist(0);
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
    x_new = X(t0);
    y_new = Y(t0);
    % stop when difference between consecutive "y" is within eps
    while (a*y_prime(y_new) < eps)
        x_new = x_new - a*x_prime(x_new);
        y_new = y_new - a*y_prime(y_new);
    end

    fprintf('x_new: %i; y_new: %i\n', x_new, y_new);
end
