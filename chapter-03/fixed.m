function fixed(g,x0,tol,n)
% The fixed-point iteration method for solving the non-linear equation f(x)=0.
%
% Inputs are the name of the function to be solved, 'g', an initial approximation
% 'x0', a tolerance 'tol', and the maximum number of iterations, 'n'.
% The input function g(x) should be defined as an m-file.

% Karab & Guenther "An Introduction to Numerical Methods: A MATLAB Approach"
% Chapman & Hall/CRC, 2002. ISBN 1-58488-281-6    fn. 3.5, p64
iter=0;
u=feval(g,x0);
err=abs(u-x0);
disp('_______________________________________________________')
disp('iter       x            g(x)       |xn+1-xn|')
disp('_______________________________________________________')
fprintf('%2.0f  %12.6f  %12.6f\n',iter,x0,u)
while (err>tol)&(iter<=n)
   x1=u;
   err=abs(x1-x0);
   x0=x1;
   u=feval(g,x0);
   iter=iter+1;
   fprintf('%2.0f  %12.6f  %12.6f  %12.8f\n',iter,x0,u,err)
end
if (iter>n)
   disp('  Method failed to converge')
end