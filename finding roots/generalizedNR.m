clear all;
clc;

f=input('enter a function ');
fd = input('enter the diffrentiation of function ');

x0 = input('enter initial guess value ');
p = input('enter the multiplicity of the root ');
x1 = x0 -(f(x0))/(fd(x0));

error = input('enter the permissible error ');

while( abs((x1-x0)/x1) > error )
    x0 = x1;
    x1 = x0 - p*(f(x0))/(fd(x0));
end

fprintf('root of the given function with multiplicity of %d is : %f\n',p,double(x1));


