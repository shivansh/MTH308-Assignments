function RelErr( x_obs,x_true )
    [m,n] = size(x_obs);
    Error = zeros(1,n);
    for i = 1:n
        abs(x_true(1,i)-x_obs(1,i))/abs(x_true(1,i))
    end
end