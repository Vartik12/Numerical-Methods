clear all;
clc;

n = input('type of interpolation in digits ');
X = input('enter set of points of x in ascending order ');
Y = input('enter set of points of y ');
x = input('enter value of x for which you want y ');
y = 0;
L = zeros(n+1,1);

for(i=1:n+1)
    prod = 1;
    for(j=1:n+1)
    if(i~=j)
        prod = prod*((x-X(j,1))/(X(i,1)-X(j,1)));
    end
    L(i,1) = prod;
    end
end

for(i=1:n+1)
    y = y + L(i,1)*Y(i,1);
end
fprintf('value of y for x=%0.1f is %f\n',x,y);
