clear all;
clc;

f=input('enter a function ');
x0 = input('enter lower value of interval ');
x1 = input('enter higher value of interval ');

x2 = ( x0*f(x1) - x1*f(x0) )/(f(x1) - f(x0));
while(abs(f(x2)) > 0.0000005 )
    
    x0 = x1;
    x1 = x2;
    x2 = ( x0*f(x1) - x1*f(x0) )/(f(x1) - f(x0));
    
end
fprintf('root is : %f \n',x2);

