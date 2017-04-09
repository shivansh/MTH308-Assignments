function x  = GaussElim( A1,b ) %A - matrix, b - vector
A = [A1,b];
[m,n] = size(A);

%Forward Elimination
for i = 1:m-1 
    for j = 2:m
        if A(i,i) == 0
            temp = A(i,:);
            A(i,:) = A(j,:);
            A(j,:) = temp;
        end
    end
    for k = i+1:m
        A(k,:) = A(k,:) - A(i,:)*(A(k,i)/A(i,i));
    end
end

%Backward Substitution
x = zeros(1,m);
for i = m:-1:1
    e = 0;
    for j = 2:m
        e = e + A(i,j)*x(j);
    end
    x(i) = (A(i,n) - e)/A(i,i);
end
x=x';

end

