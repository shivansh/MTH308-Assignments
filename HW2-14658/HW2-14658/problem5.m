function [L,U] = problem5(A)
    z=size(A,1);
    L=zeros(z,z);
    U=zeros(z,z);
    for i=1:z
        % Finding L
        for k=1:i-1
            L(i,k)=A(i,k);
            for j=1:k-1
                L(i,k)= L(i,k)-L(i,j)*U(j,k);
            end
            L(i,k) = L(i,k)/U(k,k);
        end
        % Finding R
        for k=i:z
            U(i,k) = A(i,k);
            for j=1:i-1
                U(i,k)= U(i,k)-L(i,j)*U(j,k);
            end
        end
    end
    for i=1:z
        L(i,i)=1;
    end
    ldet = 0;
    count=0;
    for i=1:z
        ldet=ldet+log(abs(L(i,i)))+log(abs(U(i,i)));
        if (L(i,i)<0)
            count=count+1;
        end
        if (U(i,i)<0)
            count=count+1;
        end
    end
    det=(-1)^(count)*(exp(ldet));
    disp('Determinant of matrix A'),disp(det);
        
end