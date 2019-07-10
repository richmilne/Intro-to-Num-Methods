function ngaussel(A,b)
% Solve the system Ax=b using naive gaussian elimination

% Karab & Guenther "An Introduction to Numerical Methods: A MATLAB Approach"
% Chapman & Hall/CRC, 2002. ISBN 1-58488-281-6    fn. 4.1, p87

n=length(b);
x=zeros(n,1);
fprintf('\n');
disp('      The augmented matrix is')
augm =[A b]
for k=1:n-1
   for i=k+1:n
      m=A(i,k)/A(k,k);
      for j=k+1:n
         A(i,j)=A(i,j)-m*A(k,j);
      end
      A(i,k)=m;
      b(i)=b(i)-m*b(k);
   end
end
x(n)=b(n)/A(n,n);
for i=n-1:-1:1
   S=b(i);
   for j=i+1:n
      S=S-A(i,j)*x(j);
   end
   x(i)=S/A(i,i);
end
% Print the results
fprintf('\n');
disp(' The transformed upper triangular augmented matrix C is =')
fprintf('\n');
for i=1:n
   for j=1:n
      if (j<i) A(i,j)=0; end
   end
end
C=[A b]
fprintf('\n');
disp('   Back substitution gives the vector solution')
x