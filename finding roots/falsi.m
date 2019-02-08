clear all;
clc;
f=input('input a function ');
a=input('enter starting point ');
b=input('enter ending point ');
c=(a*f(b) - b*f(a))/(f(b)-f(a));
e=0.000001;
while(abs(f(c)) > e)
    if(f(a)*f(c)<0)
        b=c;    
    else if(f(b)*f(c)<0)
            a=c;
        end
    end
   c=(a*f(b) - b*f(a))/(f(b)-f(a));
end
fprintf('the root is : %f \n' , c);