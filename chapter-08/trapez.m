function trapez(f,a,b,n)
% Compute the integral of a f from a to b using the trapezoid rule

% Karab & Guenther "An Introduction to Numerical Methods: A MATLAB Approach"
% Chapman & Hall/CRC, 2002. ISBN 1-58488-281-6    fn. 8.2, p216

h=(b-a)/n;
disp('_________________________________________________________')
disp(['  i         xi          f(xi)         h=',num2str(h) ])
disp('_________________________________________________________')
S=feval(f,a);
fprintf(' %2.0f %12.4f %14.6f\n',0,a,S);
for i=1:n-1
   x=a+h*i;
   g=feval(f,x);
   S=S+2*g;
   fprintf(' %2.0f %12.4f %14.6f\n',i,x,g);
end
S=S+feval(f,b);
fprintf(' %2.0f %12.4f %14.6f\n',n,b,feval(f,b));
INT=h*S/2;
fprintf('\n           The intergral of f(x) is =%16.8f\n',INT);