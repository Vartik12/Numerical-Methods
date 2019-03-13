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

for(i=n:-1:2)
    for(j=(i-1):-1:1)
        C(j,:) = C(j,:) - ( C(j,i) / C(i,i) )*C(i,:);
    end
end

for(i=1:n)
    x=C(i,n+1)/C(i,i);
    fprintf('x%d = %f\n',i,x);
end





