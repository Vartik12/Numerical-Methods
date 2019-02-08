clear all;
clc;

f=input('enter function f ');
g=input('enter function g ');
fwrtx = input('enter diffrentiation of f wrt x ');
fwrty = input('enter diffrentiation of f wrt y ');
gwrtx = input('enter diffrentiation of g wrt x ');
gwrty = input('enter diffrentiation of g wrt y ');
x0 = input('enter initial guess x0 ');
y0 = input('enter initial guess y0 ');

A = [fwrtx(x0,y0) fwrty(x0,y0) ; gwrtx(x0,y0) gwrty(x0,y0)];
B=[ -f(x0,y0); -g(x0,y0) ];
X = inv(A)*B;

h = X(1);
k = X(2);

x1 = x0+h;
y1 = y0+k;

e=0.0000005;

while( f(x1,y1)>e || g(x1,y1)>e )
    x0 = x1;
    y0 = y1;
    
    A = [fwrtx(x0,y0) fwrty(x0,y0) ; gwrtx(x0,y0) gwrty(x0,y0)];
    B=[ -f(x0,y0); -g(x0,y0) ];
    X = inv(A)*B;

    h = X(1);
    k = X(2);

    x1 = x0+h;
    y1 = y0+k;
end

fprintf('point of intersection of these two equations is ( %f , %f )\n',x1,y1);





