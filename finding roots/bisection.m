clear all;
clc;
f=input('input a function ');
a=input('enter starting point ');
b=input('enter ending point ');
cOld=0;
cNew=(a+b)/2;
error=abs( (cNew-cOld)/cNew );
e=0.0000001;
while(error>e)
    if(f(a)*f(cNew)<0)
        b=cNew;    
    else a=cNew;
    end
   cOld=cNew;
   cNew=(a+b)/2;
   error=abs( (cNew-cOld)/cNew );
end
fprintf('the root is : %f \n' , cNew);