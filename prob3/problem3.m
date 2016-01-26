function problem3

    function mem = recursiveVal(j, k)
        mem = zeros(61, 61);
        for m =
            if k == 0
                mem(j, 0) = sin(1 + j*pi/6);
            else
                mem(j, k) = mem(j, k-1) + mem(j+1, k-1);
            end
        end
    end

    x = 1;
    trueVal = @(j, k) sin(x + (j - k)*(pi/3));
    compute_eK = @(k) abs(recursiveVal(1,k) - trueVal(1, k));

    x = (1:0.1:60);
    y = compute_eK(x);
    plot(x, y)

end
