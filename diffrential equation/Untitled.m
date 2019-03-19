clear all;
clc;

f = input('enter the diffrential function of x and y ');
x = input('enter x0 ');
y = input('enter y0 ');
b=input('enter value of x to be calculated ');
h=input('enter value of h ');
while(x<b)
   k1=f(x,y);
   k2=f(x+h,y+k1*h);
   y=y+(h/2)*(k1+k2);
   x=x+h;
   
end
y