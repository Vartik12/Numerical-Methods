clear all;
clc;

x = input('enter the data set of x whose initial value starts with x=0 ');
y = input('enter the data set of y ');

a0 = y(1);
lastElement = sizeof(x,1);
b0 = (log(y(lastElement))-log(a0))/x(lastElement);

fab = @(a,b) ;
fb = @(b)(((sum(y*exp(b*x))) * (sum(x*exp(2*b*x))))/(sum(exp(2*b*x))))-(sum(exp(b*x)*y*x));

