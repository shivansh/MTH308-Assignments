function [c1, c2] = problem2(A)
    n=size(A,1);
    norm1=0;
    normin=0;
    %1 norm
    for j=1:n
        ad=0;
        for i=1:n
            ad=ad+abs(A(i,j));
        end
        
        if norm1<abs(ad)
            norm1=abs(ad);
        end
    end
    %inf norm
    for i=1:n
        ad=0;
        for j=1:n
            ad=ad+abs(A(i,j));
        end
        
        if normin<abs(ad)
            normin=abs(ad);
        end
    end
    disp(norm1);
    disp(normin);
    
    [L,U]= problem5(A);
    c = ones(n,1);
    v = zeros(n,1);
    for i=1:n
        v(i) = c(i);
        for j=1:(i-1)
            v(i) = v(i) - U(j,i)*v(j);          
        end
        v(i) = v(i)/U(i,i);
        w=v(i);
        v(i) = -c(i);
        for j=1:(i-1)
            v(i) = v(i) - U(j,i)*v(j);
        end
        v(i) = v(i)/U(i,i);
        if(abs(v(i))>=abs(w))
            c(i)= -1 ;
        else
            v(i)=w;
        end
        
    end  
    y=GaussElim(L',v);
    z=GaussElim(A,y);
    p=norm(z,1);
    pi=norm(y,1);
    ni = p/pi;
    c1=norm1*ni;
    fprintf('Norm by method 1 is %ld, condition number is %ld\n',ni,c1);
    max=0;
    for i=1:5
        y=rand(1,n);
        sol=GaussElim(A,y');
        p=norm(sol,1);
        pi=norm(y,1);
        ni=p/pi;
        if(max<ni)
            max=ni;
        end
    end
    c2=norm1*max;
     fprintf('Norm by method 2 is %ld, condition number is %ld\n',max,c2);    
end