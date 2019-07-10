function newton_sys(F,JF,xx0,tol,maxit)
% Solve a non-linear system of equations using Newton's method.
%
% Inputs are the system 'F', given by an (nx1) vector; the Jacobian 'JF' of 'F',
% given by an (nxn) matrix; an initial (nx1) vector 'xx0'; a tolerance 'tol'
% and the maximum number of iterations, 'maxit'.
% The system 'F' and its Jacobian 'JF' should be defined as m-files.

% Karab & Guenther "An Introduction to Numerical Methods: A MATLAB Approach"
% Chapman & Hall/CRC, 2002. ISBN 1-58488-281-6    fn. 3.8, p76
x0=xx0
iter=1;
while(iter<=maxit)
   y=-feval(JF,x0)\feval(F,x0);
   xn=x0+y;
   err= max(abs(xn-x0));
   if (err<=tol)
      x=xn;
      fprintf('  Newton''s method converges after %3.0f iterations to \n',iter)
      x
      return;
   else
      x0=xn;
   end
   iter=iter+1;
end
disp('Newton''s method does not converge')
x=xn;