clear all;
clc;

X0 = input('enter set of points of x ');
Y = input('enter set of points of y ');

X1 = log(X0);
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
    fn = (X1.^(i-1)).*Y;
    B(i,1) = sum(fn);
end

A = inv(F)*B;
x = min(X0):0.1:max(X0);
y = A(1,1) + A(2,1)*log(x);

plot(x,y,'r',X0,Y,'b.');


