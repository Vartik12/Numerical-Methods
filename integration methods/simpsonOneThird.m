clear all;
clc;
f=input('enter the function to be integrated ');
a=input('enter the lower limit ');
b=input('enter the upper limit ');
n=input('enter even no. of divisions ');
h=(b-a)/n;
answer=0;
for i = 0:n
    if(i==0 || i==n)
        answer = answer+f(a);
    else if(mod(i,2)==0)
            answer = answer+(2*f(a));
        else answer = answer+(4*f(a));
        end
    end
    a=a+h;
end
answer = answer*(h/3);
fprintf('answer is : %f \n', answer);