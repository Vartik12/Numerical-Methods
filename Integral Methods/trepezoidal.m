clear all;
clc;
f=input('enter the function to be integrated ');
a=input('enter the lower limit ');
b=input('enter the upper limit ');
n=input('enter the no. of divisions ');
h=(b-a)/n;
answer=0;
for i = 0:n
    if(i==0 || i==n)
        answer = answer+f(a);
    else answer = answer+(2*f(a));
    end
    a=a+h;
end
answer = answer*(h/2);
fprintf('answer is : %f \n', answer);