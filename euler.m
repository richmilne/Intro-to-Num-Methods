function euler(f,a,b,y0,n)
% solve the initial-value problem y'=f(t,y), y(a)=y0
% using Euler's method.
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