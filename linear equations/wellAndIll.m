clear all;
clc;

n = input('enter order of matrix n ');
A = input('enter a matrix of order nxn ');

prod = 1;
for(i=1:n)
    sum = 0;
    for(j=1:n)
        sum = sum + (A(i,j))^2;
    end
    prod = prod * sqrt(sum);
end

k = det(A)/prod;

if(abs(abs(k)-1) < 0.09)
    fprintf('well conditioned \n');
else fprintf('ill conditioned \n');
end
