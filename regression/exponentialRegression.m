clear all;
clc;

X = input('enter set of points of x ');
Y0 = input('enter set of points of y ');
Y1 = log(Y0);
F = zeros(2);
B = zeros(2 , 1);
A = zeros(2 , 1);

for(i=1:2)
    c=1;
    for(j=i-1:i)
        fn = X.^j;
        F(i,c) = sum(fn);
        c=c+1;
    end
    fn = (X.^(i-1)).*Y1;
    B(i,1) = sum(fn);
end

A = inv(F)*B;

a = exp(A(1,1));
b = A(2,1);

x = min(X):0.1:max(X);
y =a*exp(x*b);
plot(x,y,'r',X,Y0,'b.');
