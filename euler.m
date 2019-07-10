function euler(f,a,b,y0,n)
% solve the initial-value problem y'=f(t,y), y(a)=y0
% using Euler's method.

% Karab & Guenther "An Introduction to Numerical Methods: A MATLAB Approach"
% Chapman & Hall/CRC, 2002. ISBN 1-58488-281-6    fn. 9.1, p250

fprintf('\n')
disp('               Euler method')
disp('_______________________________________________________')
disp('    ti     f(ti,yi)        yi          Exact     error ')
disp('_______________________________________________________')
fprintf('\n')
h=(b-a)/n;
y=y0;
fprintf('%6.2f       ----   %12.6f %12.6f  %4.2f\n',a,y,y,0)
for i=1:n
   t=a+(i-1)*h;
   m=feval(f,t,y);
   y=y+h*m;
   % write the exact solution g if known as g=g(t)
   % otherwise set g='n'.
   t=t+h;
   g='n';
   if (g~='n')
     err=abs(g-y);
     fprintf('%6.2f %12.6f %12.6f %12.6f  %8.2e\n',t,m,y,g,err)
   else
      fprintf('%6.2f %12.6f %12.6f\n',t,m,y)
   end
end