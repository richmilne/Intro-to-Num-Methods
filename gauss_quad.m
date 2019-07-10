function gauss_quad(f,a,b,n)
% Compute the integral of f on [a,b] using Gauss-Legendre Quadrature
fprintf('\n')
disp('                   Gauss-Legendre quadrature')
disp('_________________________________________________________')
disp(' i       zi           wi          g(zi)        wi*g(zi)  ')
disp('_________________________________________________________')
if (n==2)
   z(1)=-sqrt(1/3);
   z(2)=-z(1);
   w(1)=1; w(2)=1;
end
if (n==3)
   z(1)=-sqrt(3/5);
   z(2)=0;
   z(3)=-z(1);
   w(1)=5/9; w(2)= 8/9; w(3)=w(1);
end
if (n==4)
   z(1)=-sqrt(1/7*(3-4*sqrt(0.3)));
   z(2)=-sqrt(1/7*(3+4*sqrt(0.3)));
   z(3)=-z(1);
   z(4)=-z(2);
   w(1)=1/2+1/12*sqrt(10/3);
   w(2)=1/2-1/12*sqrt(10/3);
   w(3)=w(1); w(4)=w(2);
end
if (n==5)
   z(1)=-sqrt(1/9*(5-2*sqrt(10/7)));
   z(2)=-sqrt(1/9*(5+2*sqrt(10/7)));
   z(3)=0;
   z(4)=-z(1);
   z(5)=-z(2);
   w(1)=0.3*((-0.7+5*sqrt(0.7))/(-2+5*sqrt(0.7)));
   w(2)=0.3*((0.7+5*sqrt(0.7))/(2+5*sqrt(0.7)));
   w(3)=128/225;
   w(4)=w(1); w(5)=w(2);
end;
S=0;
for i=1:n
   x=((b-a)*z(i)+a+b)/2;
   g=feval(f,x);
   S=S+w(i)*g;
   fprintf('%2.0f %12.4f %12.4f% 12.4f %12.4f\n',i-1,z(i),w(i),g,g*w(i));
end;
INT=S*(b-a)/2;
fprintf('\n           The intergral of f(x) is =%16.8f\n',INT);