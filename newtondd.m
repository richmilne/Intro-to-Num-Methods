function newtondd(x,y)
% Newton divided difference

% Karab & Guenther "An Introduction to Numerical Methods: A MATLAB Approach"
% Chapman & Hall/CRC, 2002. ISBN 1-58488-281-6    fn. 5.1, p140

disp('              Newton divided difference')
disp('______________________________________________________________________')
disp('     x        y        f[,]       f[,,]     f[,,,]      ...  ')
disp('______________________________________________________________________')
n=length(x);
for k=1:n-1
      % Compute first divided difference
   d(k,1)=(y(k+1)-y(k))/(x(k+1)-x(k));
end;
for i=2:n-1
   for k=1:n-i
          % Compute ith divided difference
      d(k,i)=(d(k+1,i-1)-d(k,i-1))/(x(k+i)-x(k));
   end;
end;
% print results
if (rem(n,2)==0)
   p=n/2;
   m=n/2;
else
   p=fix(n/2);
   m=fix(n/2)+1;
end;
for i=1:p
   fprintf('%8.2f %8.2f',x(i),y(i));
   for k=1:i-1
     fprintf('              %8.5f',d(i-k,2*k));
   end;
   fprintf('\n      ')
   for k=1:i
     fprintf('              %8.5f',d(i-k+1,2*k-1));
   end;
   fprintf('\n')
end;
j=p;
for i=m:-1:1
   j=j+1;
   fprintf('%8.2f %8.2f',x(j),y(j));
   for k=1:i-1
     fprintf('              %8.5f',d(j-k,2*k));
   end;
   fprintf('\n      ')
   for k=1:i-1
     fprintf('              %8.5f',d(j-k+1,2*k-1));
   end;
   fprintf('\n')
end;