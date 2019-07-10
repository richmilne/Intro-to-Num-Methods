function simpson(f,a,b,n)
% Compute the integral of a f from a to b using Simpson's
% composite rule. n must be even.
if n/2~=floor(n/2)
   disp(' n must be even')
   break
end;   
h=(b-a)/n;
disp('_________________________________________________________')
disp(['  i         xi          f(xi)         h=',num2str(h) ])
disp('_________________________________________________________')
S=feval(f,a);
fprintf(' %2.0f %12.4f %14.6f\n',0,a,S);
for i=1:n/2
   m=2*i-1;
   x=a+h*m;
   g=feval(f,x);
   S=S+4*g;
   fprintf(' %2.0f %12.4f %14.6f\n',m,x,g);
   m=2*i;
   x=a+h*m;
   g=feval(f,x);
   if(i==n/2)
      S=S+g;
   else
      S=S+2*g;
   end;
   fprintf(' %2.0f %12.4f %14.6f\n',m,x,g);
end
INT=h*S/3;
fprintf('\n           The intergral of f(x) is =%16.8f\n',INT);
