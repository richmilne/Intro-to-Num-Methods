function secant(f,x0,x1,tol,n)
% The secant method for solving the nonlinear
% equation f(x)=0.
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
 

  
 
      
         
   