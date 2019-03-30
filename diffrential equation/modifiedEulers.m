clear all;
clc;

f = input('enter the diffrential function of x and y ');
x0 = input('enter x0 ');
y0 = input('enter y0 ');
x=input('enter value of x to be calculated ');
h=input('enter value of h ');

n = (x-x0)/h;
for(i=1:n)
    y1 = y0 + f(x0,y0)*h;
    x1 = x0 + h;
    slope = (f(x0,y0)+f(x1,y1))/2;
    y1 = y0 + slope*h;
    x0 = x1;
    y0 = y1;
end

fprintf('ans is %f ' , y1);