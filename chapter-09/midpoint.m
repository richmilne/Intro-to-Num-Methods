function midpoint(f,a,b,y0,n)
% solve the initial value problem y'=f(t,y), y(a)=y0
% using the midpoint method.

% Karab & Guenther "An Introduction to Numerical Methods: A MATLAB Approach"
% Chapman & Hall/CRC, 2002. ISBN 1-58488-281-6    fn. 9.2, p266

fprintf('\n')
disp('              Midpoint method')
disp('_____________________________________________________________________')
disp('     t        k1          k2            y         Exact     error    ')
disp('_____________________________________________________________________')
fprintf('\n')
h=(b-a)/n;
y=y0;
m=feval(f,a,y0);
fprintf('%6.2f       ----         ----   %12.6f\n',a,y)
for i=1:n
   t=a+(i-1)*h;
   k1=feval(f,t,y);
   k2=feval(f,t+h/2,y+h*k1/2);
   y=y+h*k2;
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