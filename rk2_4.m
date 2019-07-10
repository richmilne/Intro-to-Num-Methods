function rk2_4k(f,a,b,y0,n,order)
% solve the initial-value problem y'=f(t,y), y(a)=y0
% using Runge-Kutta methods.

% Karab & Guenther "An Introduction to Numerical Methods: A MATLAB Approach"
% Chapman & Hall/CRC, 2002. ISBN 1-58488-281-6    fn. 9.3, p267

fprintf('\n')
disp(['        Runge-Kutta method of order = ',num2str(order)])
h=(b-a)/n;
y=y0;
if (order==2)
disp('__________________________________________________________________')
disp('   t         k1           k2           y           Exact     error  ')
disp('__________________________________________________________________')
fprintf('\n')
fprintf('%6.2f       ----         ----   %12.6f %12.6f  %4.2f\n',a,y,y,0)
   for i=1:n
      t=a+(i-1)*h;
      k1=feval(f,t,y);
      k2=feval(f,t+h,y+h*k1);
      y=y+h*(k1+k2)/2;
      t=t+h;
% Enter the exact solution if known as g=g(t)
% otherwise set g='n'.
      g='n';
      if (g~='n')
         err=abs(g-y);
         fprintf('%6.2f %12.6f %12.6f %12.6f %12.6f  %8.2e\n',t,k1,k2,y,g,err)
      else
         fprintf('%6.2f %12.6f %12.6f %12.6f\n',t,k1,k2,y)
      end
   end
end
if (order==4)
disp('_____________________________________________________________________________________________')
disp('   t         k1           k2          k3            k4            y          Exact    error  ')
disp('_____________________________________________________________________________________________')
fprintf('\n')
fprintf('%6.2f       ----         ----         ----         ----   %12.6f %12.6f  %4.2f\n',a,y,y,0)
   for i=1:n
      t=a+(i-1)*h;
      k1=feval(f,t,y);
      k2=feval(f,t+h/2,y+h*k1/2);
      k3=feval(f,t+h/2,y+h*k2/2);
      k4=feval(f,t+h,y+h*k3);
      y=y+h*(k1+2*k2+2*k3+k4)/6;
      t=t+h;
% Enter the exact solution if known as g=g(t)
% otherwise set g='n'.
      g=exp(-t)+2*t-2;
      if (g~='n')
        err=abs(g-y);
        fprintf('%6.2f %12.6f %12.6f %12.6f %12.6f %12.6f %12.6f  %8.2e\n',t,k1,k2,k3,k4,y,g,err)
      else
         fprintf('%6.2f %12.6f %12.6f %12.6f %12.6f %12.6f\n',t,k1,k2,k3,k4,y)
      end
   end
end