clear all;
clc;

n=input('enter the order of interpolation n ');
X = input('enter set of points of x in ascending order whose difference is constant ');
Y = input('enter set of points of y ');
x = input('enter value of x for which you want y ');
y = 0;
h = X(2)-X(1);

F=zeros(n+1);

for(i=1:n+1)
    F(i,1)=Y(i,1);
end

for(i=1:n+1)
    for(j=1:i)
        if(j~=1)
            F(i,j) = F(i,j-1)-F(i-1,j-1);
        end
    end
end

for(i=1:n+1)
    prod = 1;
    for(j=1:i-1)
        prod = prod*(x-X(n+2-j,1));
    end
    y = y + (F(n+1,i)/(factorial(i-1)*(h^(i-1))))*prod;    
end
fprintf('value of y for x=%0.1f is %f\n',x,y);
