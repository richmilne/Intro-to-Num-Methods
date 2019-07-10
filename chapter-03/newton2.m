function newton2(f,df,x0,m,tol,n)
% The modified Newton's method for solving the nonlinear equation f(x)=0.
%
% Inputs are the name of the function to be solved, 'f', and its derivative,
% 'df'. 'x0' is an initial approximation, 'm' is the number of multiplicity,
%'tol' is the tolerance and the maximum number of iterations is givne by 'n'.
% The input functions f(x) and f'(x) should be defined as m-files.

% Karab & Guenther "An Introduction to Numerical Methods: A MATLAB Approach"
% Chapman & Hall/CRC, 2002. ISBN 1-58488-281-6    fn. 3.6, p69
iter=0;
u=feval(f,x0);
v=feval(df,x0);
err=abs(m*u/v);
disp('________________________________________________')
disp('iter    x            f(x)           df(x)        |xn+1-xn|')
disp('___________________________________________________')
fprintf('%2.0f  %12.6f  %12.6f  %12.6f\n',iter,x0,u,v)
while (err>tol)&(iter<=n)&(v~=0)
   x1=x0-m*u/v;
   err=abs(x1-x0);
   x0=x1;
   u=feval(f,x0);
   v=feval(df,x0);
   iter=iter+1;
   fprintf('%2.0f  %12.6f  %12.6f  %12.6f  %12.7f\n',iter,x0,u,v,err)
   pause(1)
   y(iter)=err;
end
if (v==0)
   disp('  division by zero')
end
if (iter>n)
   disp('  Method failed to converge')
end