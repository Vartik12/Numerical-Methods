clear all;
clc;

X = input('enter set of points of x ');
Y = input('enter set of points of y ');

X1 = zeros(size(X));
Y1 = zeros(size(Y));

for(i=1:size(X,1))
    X1(i) = 1/X(i);
    Y1(i) = 1/Y(i);
end

F = zeros(2);
B = zeros(2 , 1);
A = zeros(2 , 1);

for(i=1:2)
    c=1;
    for(j=i-1:i)
        fn = X1.^j;
        F(i,c) = sum(fn);
        c=c+1;
    end
    fn = (X1.^(i-1)).*Y1;
    B(i,1) = sum(fn);
end

A = inv(F)*B;

a = 1/(A(1,1));
b= a*A(2,1);

% plot of regression model ...
x = min(X):0.1:max(X);
y = (a*x)./(b+x);
plot(x,y,'r',X,Y,'b.');

