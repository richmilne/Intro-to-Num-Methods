function spl3(x,y,m)
% Cubic spline

% Karab & Guenther "An Introduction to Numerical Methods: A MATLAB Approach"
% Chapman & Hall/CRC, 2002. ISBN 1-58488-281-6    fn. 6.2, p165

n=length(x);
for i=1:n-1
   h(i)=x(i+1)-x(i);
   b(i)=(y(i+1)-y(i))/h(i);
end
u(2)=2*(h(1)+h(2));
v(2)=6*(b(2)-b(1));
for i=3:n-1
   u(i)=2*(h(i-1)+h(i))-h(i-1)^2/u(i-1);
   v(i)=6*(b(i)-b(i-1))-h(i-1)*v(i-1)/u(i-1);
end
z(n)=0;
for i=n-1:-1:2
   z(i)=(v(i)-h(i)*z(i+1))/u(i);
end
z(1)=0;
% print the results.
disp('                 cubic spline')
disp('_________________________________________________________')
disp('        x               S(x)       ')
disp('_________________________________________________________')
for i=1:n-1
   for j=1:m+1
      r=(x(i+1)-x(i))/(m+1);
      t=x(i)+(j-1)*r;
      dis=(j-1)*r;
      hh=x(i+1)-x(i);
      bb=(y(i+1)-y(i))/hh-hh*(z(i+1)+2*z(i))/6;
      q=0.5*z(i)+dis*(z(i+1)-z(i))/(6*hh);
      q=bb+dis*q;
      spl3=y(i)+dis*q;
      fprintf('%12.5f %17.5f \n',t,spl3)
   end
end
fprintf('%12.5f %17.5f \n',x(n),y(n))
fprintf('\n')