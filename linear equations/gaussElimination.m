clear all;
clc;

n = input('enter the order of n of nxn matrix ');
A = input('enter the coefficient matrix of order nxn ');
B = input('enter the matrix B of order nx1 ');
C = [];
i=0;
j=0;

for(i=1:n)
    for(j=1:n)
      C(i,j) = A(i,j);  
    end
    C(i,j+1)=B(i);
end

for(i=1:(n-1))
    for(j=(i+1):n)
        C(j,:) = C(j,:) - ( C(j,i) / C(i,i) )*C(i,:);
    end
end

X=zeros(n+1 , 1);
for(i=n:-1:1)
    X(i) = (C(i,n+1)-(C(i,:)*X))/C(i,i);
end

for(i=1:n)
    fprintf('x%d = %f\n',i,X(i));
end
