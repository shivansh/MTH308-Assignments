function problem2b
    for pow=1:15
        fprintf('for 10^-%i; f(x)=%ld; \n',pow,(exp(10^(-pow))-1)/log(exp(10^(-pow))));
    end
end