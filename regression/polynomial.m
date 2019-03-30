clear all;
clc;

n = input('type of regression model in digits ');
X = input('enter set of points of x ');
Y = input('enter set of points of y ');
y = 0;

F = zeros(n+1);
B = zeros(n+1 , 1);
A = zeros(n+1 , 1);

for(i=1:n+1)
    c=1;
    for(j=i-1:n+i-1)
        fn = X.^j;
        F(i,c) = sum(fn);
        c=c+1;
    end
    fn = (X.^(i-1)).*Y;
    B(i,1) = sum(fn);
end

A = inv(F)*B;

% printing y...

fprintf('\n y = ');
for(i=1:n+1)
    if(i==1)
        fprintf('%f ',A(i,1));
    else if(A(i)>0)
            fprintf('+ %f*x^%d ',A(i,1),i-1);
        else fprintf('- %f*x^%d ',abs(A(i,1)),i-1);
        end
    end
end
fprintf('\n\n');

% plotting x and y...
x = [min(X):0.1:max(X)];
for(i=1:n+1)
    y=y+A(i,1)*(x.^(i-1));
end
plot(x,y,'r',X,Y,'b.');

