function romberg(f,a,b,n)
% Compute the integral of f on [a,b] using Romberg integration.

% Karab & Guenther "An Introduction to Numerical Methods: A MATLAB Approach"
% Chapman & Hall/CRC, 2002. ISBN 1-58488-281-6    fn. 8.4, p235

fprintf('\n')
disp('                    Romberg table')
disp('_________________________________________________________')
disp(' i     h          Ri,1        Ri,2        Ri,3   ...  ')
disp('_________________________________________________________')
h=b-a;
R(1,1)=h*(feval(f,a)+feval(f,b))/2;
fprintf('%2.0f %8.4f %12.4f\n',1,h,R(1,1));
m=1;
for i=1:n-1
   h=h/2;
   S=0;
   for j=1:m
      x=a+h*(2*j-1);
      S=S+feval(f,x);
   end
   R(i+1,1)=R(i,1)/2+h*S;
   fprintf('%2.0f %8.4f %12.4f',i+1,h,R(i+1,1));
   m=2*m;
   for k=1:i
      R(i+1,k+1)=R(i+1,k)+(R(i+1,k)-R(i,k))/(4^k-1);
      fprintf('%12.4f',R(i+1,k+1));
   end
   fprintf('\n');
end