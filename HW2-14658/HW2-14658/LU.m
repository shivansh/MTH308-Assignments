function [L,U,P] = LU(A)
% Solves linear system by LU decomposition method
% Written by Ahmad Kolahi

n=length(A);
U=A;
piv=zeros(1,n);
for k=1:n-1,
max_row = find(U.x(k:n,k)~=0) + k - 1; 
if isempty(max_row)
error('matrix not invertible')
end
max_row = max_row(1); 
if (max_row ~= k),
U.x([k max_row],1:n) = U.x([max_row k],1:n);
end;
piv(k) = max_row;
Ukk_inv = gf_mex(U.x(k,k),U.x(k,k),U.m,'rdivide',...
A.prim_poly,GF_TABLE1,GF_TABLE2);
U.x(k+1:n,k) = gf_mex(U.x(k+1:n,k),Ukk_inv(ones(length(k+1:n),1)),U.m,'times',...
A.prim_poly,GF_TABLE1,GF_TABLE2);
temp = gf_mex(U.x(k+1:n,k),U.x(k,k+1:n),U.m,'mtimes',...
A.prim_poly,GF_TABLE1,GF_TABLE2);
U.x(k+1:n,k+1:n) = gf_mex(U.x(k+1:n,k+1:n),temp,U.m,'plus',...
A.prim_poly,GF_TABLE1,GF_TABLE2);
end;

L=A;
L.x=uint16(eye(n));
for i=2:n
L.x(i,1:i-1)=U.x(i,1:i-1);
end;
U.x=triu(U.x);

P=A;
P.x=uint16(eye(n));
for k=1:n-1,
P.x([k piv(k)],:)=P.x([piv(k) k],:);
end;

if(nargout==2)
L = P'*L;
end
%**********************************
