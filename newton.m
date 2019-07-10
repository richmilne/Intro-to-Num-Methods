function newton(f,df,x0,tol,n)
% Newton's method for solving the nonlinear
% equation f(x)=0.
iter=0;
u=feval(f,x0);
v=feval(df,x0);
err=abs(u/v);
disp('_____________________________________________________________')
disp(' iter      x            f(x)          df(x)      |xn+1-xn|')
disp('_____________________________________________________________')
fprintf('%2.0f  %12.6f  %12.6f  %12.6f\n',iter,x0,u,v)
while (err>tol)&(iter<=n)&(v~=0)
      x1=x0-u/v;
      err=abs(x1-x0);
      x0=x1;
      u=feval(f,x0);
      v=feval(df,x0);
      iter=iter+1;
      fprintf('%2.0f  %12.6f  %12.6f  %12.6f  %12.6f\n',iter,x0,u,v,err)
end
if (v==0) 
   disp('  division by zero')     
end
if (iter>n)
   disp('  Method failed to converge')
end
  

    

  
 
      
         
   