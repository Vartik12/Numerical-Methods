clear all;
clc;

n = input('enter the order of n of nxn matrix ');
A = input('enter the coefficient matrix of order nxn ');
B = eye(n);
C = [];
i=0;
j=0;

for(i=1:n)
    for(j=1:2*n)
        if(j<n || j==n )
      C(i,j) = A(i,j);
        else 
            C(i,j) = B(i,j-n);
        end
    end
end

for(i=1:(n-1))
    for(j=(i+1):n)
        C(j,:) = C(j,:) - ( C(j,i) / C(i,i) )*C(i,:);
    end
end

for(i=n:-1:2)
    for(j=(i-1):-1:1)
        C(j,:) = C(j,:) - ( C(j,i) / C(i,i) )*C(i,:);
    end
end

for(i=1:n)
    C(i,:)=C(i,:)/C(i,i);
    B(i,:) = C(i, (n+1 : 2*n) );
end
fprintf('inverse of given matrix is: \n');
disp(B);




