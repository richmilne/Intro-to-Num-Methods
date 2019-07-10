function newton_sys(F,JF,xx0,tol,maxit)
% F is the system given by an (n x 1) matrix;
% JF is the Jacobian of F given by an (n x n) matrix;
% xx0 is the (n x 1) initial vector, tol ia a tolerance;
% max_it is the maximum number of iterations.
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