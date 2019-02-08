clear all;
clc;

f=input('enter a function ');
y = input('enter the diffrentiation of function ');

x0 = input('enter initial guess value ');
x1 = x0 -(f(x0))/(y(x0));

error = input('enter the permissible error ');

while( abs((x1-x0)/x1) > error )
    x0 = x1;
    x1 = x0 -(f(x0))/(y(x0));
end

fprintf('root of the given function is : %f\n',double(x1));


