clear all;
clc;

f = input('enter the diffrential function of x and y ');
x0 = input('enter initial value x0 ');
y0 = input('enter initial value y0 ');
x = input('enter value of x for which you want to calculate y ');
h = input('enter value of h ');
n = input('\n which method you want to solve this question with... \n 1. RK2 \n 2. RK4 \n');
y = 0;

while(x0<x)
    if(n==1)
    k1 = f(x0,y0);
    k2 = f(x0 + h , y0 + k1*h);
    y = y0+(h/2)*(k1+k2);
    else
    k1 = f(x0,y0);
    k2 = f(x0 + h/2 , y0 + k1*(h/2));
    k3 = f(x0 + h/2 , y0 + k2*(h/2));
    k4 = f(x0 + h , y0 + k3*h);
    y = y0+(h/6)*(k1+2*k2+2*k3+k4);
    end
    y0 = y;
    x0 = x0+h;
end

fprintf('for x = %0.4f y = %0.4f \n',x,y);