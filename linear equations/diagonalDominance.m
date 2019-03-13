clear all;
clc;

n=input('enter the order of matrix n ');
A=input('enter the matrix of nxn ');
c=0;

for(i=1:n)
 sum=0;
    for(j=1:n)
       if(i~=j)
           sum = sum + abs(A(i,j))/abs(A(i,i));
       end
    end
    if(sum < 1 || sum==1)
        c=c+1;
    end   
end

if(c==n)
    fprintf('matrix is diagonally dominant ');
else fprintf('matrix is NOT diagonally dominant ');
end