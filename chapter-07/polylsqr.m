function polylsqr(x,y,m)
%Construct the least squares polynomial of degree m
%that fits x and y row or column vectors.

% Karab & Guenther "An Introduction to Numerical Methods: A MATLAB Approach"
% Chapman & Hall/CRC, 2002. ISBN 1-58488-281-6    fn. 7.2, p184

n=length(x);
n=length(y);
for k=1:2*m+1
   c(k)=sum(x.^(k-1));
end
%Find the coefficient vector b of normal equations
for k=1:m+1
   b(k)=sum(y.*x.^(k-1));
end
% Find the coefficient matrix A of normal equations
for i=1:m+1
   for j=1:m+1
      A(i,j)=c(j+i-1);
   end
end
fprintf('\n')
disp(' The Augmented Matrix of the normal equations, [A b] =')
fprintf('\n')
disp([A b'])
z=A\b';
disp(' The coefficients a0,...,an of the least squares polynomial are ')
fprintf('\n')
disp(z')
% Evaluate the polynomial at xi, i=1,..,n.
disp('_________________________________________________________')
disp('   xi      yi        p(xi)       |yi-p(xi)|     ')
disp('_________________________________________________________')
for i=1:n
   s=z(1);
   for k=2:m+1
      s=s+z(k)*x(i)^(k-1);
   end
   p(i)=s;
   err(i)=abs(y(i)-p(i));
   fprintf('%6.2f  %6.2f  %12.6f  %12.6f\n',x(i),y(i),p(i),err(i))
end
err=sum(err.*err);
fprintf('\n E(a0,...,an) =%12.6g\n',sum(err))