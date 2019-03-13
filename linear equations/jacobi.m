clear all;
clc;
n = input('enter n (order of square matrix) ');
A = input('enter the coefficient matrix A of order nxn ');
B = input('enter matrix B of order nx1 ');
X0 = input('enter the initial guess matrix of order nx1 ');
error = input('enter the permissible error ');
relerr=[];

X1 = zeros(n,1);
for(i=1:n)
    X1(i) = X0(i) + ( B(i) - (A(i,:)*X0) )/(A(i,i));
  relerr(i,1)= abs((X1(i,1)-X0(i,1))/X1(i,1));
end
maxerr = max(relerr);
X0 = X1;

while(maxerr > error)
    for(i=1:n)
    X1(i) = X0(i) + ( B(i) - (A(i,:)*X0) )/(A(i,i));
    relerr(i,1)= abs((X1(i,1)-X0(i,1))/X1(i,1));
    end
maxerr = max(relerr);
X0 = X1;
end

X1
