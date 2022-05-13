function falsi(f,a,b,tol,n)
% Regula Falsi ('false position') method for solving non-linear equation f(x)=0.
%
% Inputs are the name of the function to be solved, 'f', the endpoints 'a' and
% 'b', a tolerance 'tol', and the maximum number of iterations, 'n'.
% The input function f(x) should be defined as an m-file.

% Karab & Guenther "An Introduction to Numerical Methods: A MATLAB Approach"
% Chapman & Hall/CRC, 2002. ISBN 1-58488-281-6    fn. 3.2, p47
a0=a;
b0=b;
iter=0;
u=feval(f,a);
v=feval(f,b);
c=(v*a-u*b)/(v-u);
w=feval(f,c);
disp('_________________________________________________________________')
disp(' iter     a             b          c            f(c)      |b-a|')
disp('_________________________________________________________________')
fprintf('\n')
if (u*v<=0)
   while (abs(w)>tol)&(abs(b-a)>tol)&(iter<=n)&((v-u)~=0)
      w=feval(f,c);
      fprintf('%2.0f %12.4f %12.4f  %12.6f  %10.6f %10.6f\n',iter,a,b,c,w,abs(b-a))
      if (w*u<0)
         b=c;v=w;
      end
      if (w*u>0)
         a=c;u=w;
      end
      iter=iter+1;
      c=(v*a-u*b)/(v-u);
   end
   if (iter>n)
      disp('  Method failed to converge')
   end
   if (v-u==0)
      disp('  Division by zero')
   end
else
   disp('  The method cannot be applied f(a)f(b)>0')
end
% Plot f(x) in the interval [a,b].
fplot(f,[a0 b0])
xlabel('x');ylabel('f(x)'); grid
