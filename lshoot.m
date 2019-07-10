function lshoot(f1,f2,a,b,alfa,beta,n)
% Solve the 2nd order BVP using the linear shooting method
% f1=-p(x)*u-q(x)*v+r(x)
% f2=-p(x)*u-q(x)*v
h=(b-a)/n;
y1=alfa;
y2=0;
u=0;
v=alfa;
for i=1:n
% RK of order 4
    x=a+(i-1)*h;
    k1=feval(f1,x,u,v);
    c1=u;
    k2=feval(f1,x+h/2,u+h*k1/2,v+h*c1/2);
    c2=u+h/2*k1;
    k3=feval(f1,x+h/2,u+h*k2/2,v+h*c2/2);
    c3=u+h/2*k2;
    k4=feval(f1,x+h,u+h*k3,v+h*c3);
    c4=u+h*k3;
    u=u+h*(k1+2*k2+2*k3+k4)/6;
    v=v+h*(c1+2*c2+2*c3+c4)/6;
    y1(i+1)=v;
end
u=1;
v=0;
for i=1:n
% RK of order 4 
    x=a+(i-1)*h;
    k1=feval(f2,x,u,v);
    c1=u;
    k2=feval(f2,x+h/2,u+h*k1/2,v+h*c1/2);
    c2=u+h/2*k1;
    k3=feval(f2,x+h/2,u+h*k2/2,v+h*c2/2);
    c3=u+h/2*k2;
    k4=feval(f2,x+h,u+h*k3,v+h*c3);
    c4=u+h*k3;
    u=u+h*(k1+2*k2+2*k3+k4)/6;
    v=v+h*(c1+2*c2+2*c3+c4)/6;
    y2(i+1)=v;
 end
fprintf('\n')
disp('            Linear shooting method')
fprintf('\n')
disp([' u(b) = ',num2str(y1(n+1)),'  '])
disp([' v(b) = ',num2str(y2(n+1)),'  '])
fprintf('\n')
disp('_________________________________________________________')
disp('   xi        ui            vi           yi             ' )
disp('_________________________________________________________')
for i=1:n+1
   x=a+(i-1)*h;
   w=y1(i)+(beta-y1(n+1))/y2(n+1)*y2(i);
   %Write the exact solution if known as s=s(x)
   %otherwise set s='n'.
   s='n';
   if (s=='n')
      fprintf('%6.2f %12.6f %12.6f %12.6f\n',x,y1(i),y2(i),w)
   else 
      err=abs(w-s);
      fprintf('%6.2f %12.6f %12.6f %12.6f %12.6f %10.2e\n',x,y1(i),y2(i),w,s,err)
   end
end
   