function gaussel(A,b)
% Solve the system Ax=b using naive gaussian elimination
n=length(b);
x=zeros(n,1);
fprintf('\n');
disp('      The augmented matrix is =')
augm =[A b]
for i=1:n
   d(i)=i;
   smax=0;
   for j=1:n
      smax=max(smax,abs(A(i,j)));
   end
   c(i)=smax;
end
for k=1:n-1
   rmax=0;
   for i=k:n
      R=abs(A(d(i),k))/c(d(i));
      if (R>rmax)
         j=i;
         rmax=R;
      end
   end
   dk=d(j);
   d(j)=d(k);
   d(k)=dk;
   for i=k+1:n
      m=A(d(i),k)/A(dk,k);
      for j=k+1:n
         A(d(i),j)=A(d(i),j)-m*A(dk,j);
      end
      A(d(i),k)=m;
   end
end
% Perform the back substitution.
for k=1:n-1
   for i=k+1:n
       b(d(i))=b(d(i))-b(d(k))*A(d(i),k);
    end
end
x(n)=b(d(n))/A(d(n),n);
for i=n-1:-1:1
   S=b(d(i));
   for j=i+1:n
      S=S-A(d(i),j)*x(j);
   end
   x(i)=S/A(d(i),i);
end
% Print the results
disp('The scale vector =')
c
disp('The index vector at the end of the elimination process is =')
d
fprintf('\n');
disp(' The transformed upper triangular augmented matrix C is =')
fprintf('\n');
for i=1:n
   M(i,:)=A(d(i),:);
end
for i=1:n
   for j=1:n
      if (j<i) M(i,j)=0; end
   end
end
C=[M b]
fprintf('\n');
disp('   Back substitution gives the vector solution')
x