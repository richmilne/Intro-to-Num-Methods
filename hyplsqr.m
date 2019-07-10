function hyplsqr(x,y)
% Construct the least square hyperbolic y=a+b/x
% that fits x and y row or column vectors.
n=length(x);
n=length(y);
z=ones(size(x));
z=z./x;
sumz=sum(z);
sumy=sum(y);
sumz2=sum(z.*z);
sumzy=sum(z.*y);
b=(n*sumzy-sumz*sumy)/(n*sumz2-sumz^2);
a=(sumz2*sumy-sumzy*sumz)/(n*sumz2-sumz^2);
disp('                 hyperbolic least squares')
fprintf('\n a =%12.6f\n',a)
fprintf(' b =%12.6f\n',b)
disp('_________________________________________________________')
disp('    x     y     1/xi      a+b/x      |y-(a+b/xi)|     ')
disp('_________________________________________________________')
for i=1:n
   yh=a+b/x(i);
   err(i)=abs(yh-y(i));
   fprintf('%6.2f %6.2f %6.2f %12.6f  %12.6f\n',x(i),y(i),z(i),yh,err(i))
end