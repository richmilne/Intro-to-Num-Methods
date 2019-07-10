function linlsqr(x,y)
% Construct a least square line y=ax+b
% that fits x and y row or column vectors.
n=length(x);
n=length(y);
sumx=sum(x);
sumy=sum(y);
sumx2=sum(x.*x);
sumxy=sum(x.*y);
a=(n*sumxy-sumx*sumy)/(n*sumx2-sumx^2);
b=(sumx2*sumy-sumxy*sumx)/(n*sumx2-sumx^2);
disp('                 linear least squares')
fprintf('\n a =%12.6f\n',a)
fprintf(' b =%12.6f\n',b)
disp('_________________________________________________________')
disp('    x     y        a*x+b        |y-(ax+b)|     ')
disp('_________________________________________________________')
for i=1:n
   yl=a*x(i)+b;
   err(i)=abs(yl-y(i));
   fprintf('%6.2f %6.2f  %12.6f  %12.6f\n',x(i),y(i),yl,err(i))
end
err=sum(err.*err);
fprintf('\n E(a,b) =%12.6f\n',sum(err))

  



