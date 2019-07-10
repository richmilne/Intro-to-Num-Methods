function abash(f,a,b,y0,n,order)
% solve the initial-value problem y'=f(t,y), y(a)=y0
% using Adams-bashforth method.

% Karab & Guenther "An Introduction to Numerical Methods: A MATLAB Approach"
% Chapman & Hall/CRC, 2002. ISBN 1-58488-281-6    fn. 9.4, p277

fprintf('\n Runge-Kutta method gives \n\n')
h=(b-a)/n;
t=(a:h:b+h);
y(1)=y0;
fprintf('y(%2.1f) =%14.8f\n',a,y(1))
   % RK4 to start
for i=1:(order-1)
   k1=feval(f,t(i),y(i));
   k2=feval(f,t(i)+h/2,y(i)+h*k1/2);
   k3=feval(f,t(i)+h/2,y(i)+h*k2/2);
   k4=feval(f,t(i)+h,y(i)+h*k3);
   y(i+1)=y(i)+h*(k1+2*k2+2*k3+k4)/6;
   fprintf('y(%2.1f) =%14.8f\n',t(i)+h,y(i+1))
end
fprintf('\n')
disp(['              Adams-Bashforth method of order ',num2str(order)])
disp('______________________________________________________________________________________________')
disp('    t         fi-3        fi-2         fi-1          fi          y           Exact     error ')
disp('______________________________________________________________________________________________')
fprintf('\n')
if(order==4)
  % 4th order AB
 for i=order:n
    f1=feval(f,t(i),y(i));
    f2=feval(f,t(i-1),y(i-1));
    f3=feval(f,t(i-2),y(i-2));
    f4=feval(f,t(i-3),y(i-3));
    y(i+1)=y(i)+h*(55*f1-59*f2+37*f3-9*f4)/24;
 % Enter the exact solution g if known as g=g(x)
 % otherwise set g='n'.
    x=t(i+1);
    g='n';
    if (g~='n')
      err=abs(g-y(i+1));
      fprintf('%6.2f %12.6f %12.6f %12.6f %12.6f %12.6f %12.6f  %8.2e\n',t(i)+h,f4,f3,f2,f1,y(i+1),g,err)
    else
      fprintf('%6.2f %12.6f %12.6f %12.6f %12.6f %12.6f\n',t(i)+h,f4,f3,f2,f1,y(i+1))
    end
  end
elseif (order==3)
  % 3rd order AB
 for i=order:n
    f1=feval(f,t(i),y(i));
    f2=feval(f,t(i-1),y(i-1));
    f3=feval(f,t(i-2),y(i-2));
    y(i+1)=y(i)+h*(23*f1-16*f2+5*f3)/12;
% Enter the exact solution g if known as g=g(x)
% otherwise set g='n'.
    x=t(i+1);
    g='n';
    if (g~='n')
      err=abs(g-y(i+1));
      fprintf('%6.2f              %12.6f %12.6f %12.6f %12.6f %12.6f  %8.2e\n',t(i)+h,f3,f2,f1,y(i+1),g,err)
    else
      fprintf('%6.2f              %12.6f %12.6f %12.6f %12.6f\n',t(i)+h,f3,f2,f1,y(i+1))
    end
 end
else
% 2nd order AB
  for i=order:n
    f1=feval(f,t(i),y(i));
    f2=feval(f,t(i-1),y(i-1));
    y(i+1)=y(i)+h*(3*f1-f2)/2;
% Enter the exact solution g if known as g=g(x)
% otherwise set g='n'.
    x=t(i+1);
    g='n';
    if (g~='n')
       err=abs(g-y(i+1));
       fprintf('%6.2f                           %12.6f %12.6f %12.6f %12.6f  %8.2e\n',t(i)+h,f2,f1,y(i+1),g,err)
    else
      fprintf('%6.2f                           %12.6f %12.6f %12.6f\n',t(i)+h,f2,f1,y(i+1))
    end
  end
end