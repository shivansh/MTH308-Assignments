function problem3b
    mem = zeros(61, 61);    % Matrix used for memoization
    for j = 1:61
        mem(j, 1) = single(sin(1+(j-1)*pi/3)); 
    end
    
    % Compute individual entries of memoized 
    % matrix using dynamic programming
    for k = 2:61
        for j = 2:(62-k)
            mem(j-1, k) = mem(j-1, k-1) - mem(j, k-1);
        end
    end
    
    for i = 1:60
        fprintf('k = %d, e_k = %e\n', i, abs(mem(1, i) - single(sin(1 + (1-i)*pi/3)))) ;
    end

    x = (1: 60);
    plot(x, abs(mem(1, x) - single(sin(1 + (1-x) * pi/3))));
end