function secant(f,x0,x1,tol,n)
% Find the solution to the non-linear equation f(x)=0 using the secant method.
%
% Inputs are a function 'f', initial approximations 'x0' and 'x1', and a
% tolerance 'tol'.
% The input function f(x) should be defined as an m-file.

% Karab & Guenther "An Introduction to Numerical Methods: A MATLAB Approach"
% Chapman & Hall/CRC, 2002. ISBN 1-58488-281-6    fn. 3.3, p50
iter=0;
u=feval(f,x0);
v=feval(f,x1);
err=abs(x1-x0);
disp('______________________________________________________________')
disp('iter     xn          f(xn)      f(xn+1)-f(xn)    |xn+1-xn|')
disp('______________________________________________________________')
fprintf('%2.0f  %12.6f  %12.6f\n',iter,x0,u)
fprintf('%2.0f  %12.6f  %12.6f  %12.6f  %12.6f\n',iter,x1,v,v-u,err)
while (err>tol)&(iter<=n)&((v-u)~=0)
      x=x1-v*(x1-x0)/(v-u);
      x0=x1;
      u=v;
      x1=x;
      v=feval(f,x1);
      err=abs(x1-x0);
      iter=iter+1;
      fprintf('%2.0f  %12.6f  %12.6f  %12.6f  %12.6f\n',iter,x1,v,v-u,err)
end
if ((v-u)==0)
      disp(' Division by zero')
end
if (iter>n)
      disp(' Method failed to converge')
end