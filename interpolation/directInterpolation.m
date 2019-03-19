clear all;
clc;

n = input('type of interpolation in digits ');
X0 = input('enter set of points of x in ascending order ');
Y0 = input('enter set of points of y ');
x = input('enter value of x for which you want y ');
y = 0;

A = zeros(n+1);
B = zeros(n+1 , 1);
C = zeros(n+1 , 1);

for(i=1:n+1)
    for(j=1:n+1)
        A(i,j) = (X0(i,1))^(j-1);
    end
    B = Y0;
end

C = inv(A)*B;

for(i=1:n+1)
    y = y + C(i,1)*(x^(i-1));
end
y
