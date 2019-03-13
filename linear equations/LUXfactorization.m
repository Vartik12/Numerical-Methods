clear all;
clc;

n = input('enter the number of equations n ');
A = input('enter the coefficient matrix A of order nxn ');
B = input('enter matrix B of order nx1 ');

L = eye(n);
U = zeros(n);
X = zeros(n,1);
Y = zeros(n,1);

for(i=1:n)
    for(j=1:n)
        if(i>j)
            L(i,j) = (A(i,j) - L(i,:)*U(:,j))/U(j,j);
        else
            U(i,j) = A(i,j) - L(i,:)*U(:,j);
        end
    end
end

for(i=1:n)
    Y(i,1) = B(i,1) - L(i,:)*Y;
end

for(i=3:-1:1)
    X(i,1) = (Y(i,1) - U(i,:)*X)/U(i,i);
end

for(i=1:n)
    fprintf('value of x%d is : %f\n' ,i,X(i,1));
end

