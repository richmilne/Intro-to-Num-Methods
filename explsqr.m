function explsqr(x,y)
% Construct the least square exponential y=a*exp(b*x)
% that fits x and y row or column vectors.

% Karab & Guenther "An Introduction to Numerical Methods: A MATLAB Approach"
% Chapman & Hall/CRC, 2002. ISBN 1-58488-281-6    fn. 7.3, p192

n=length(x);
n=length(y);
z=log(y);
sumx=sum(x);
sumz=sum(z);
sumx2=sum(x.*x);
sumxz=sum(x.*z);
beta=(n*sumxz-sumx*sumz)/(n*sumx2-sumx^2);
b=beta;
alfa=(sumx2*sumz-sumxz*sumx)/(n*sumx2-sumx^2);
a=exp(alfa);
disp('                 Exponential least squares')
fprintf('\n a =%12.6f\n',a)
fprintf(' b =%12.6f\n',b)
disp('_________________________________________________________')
disp('    xi     yi     ln(yi)    a*exp(b*xi)  |yi-[a*exp(b*xi)]|     ')
disp('_________________________________________________________')
for i=1:n
   ye=a*exp(b*x(i));
   err(i)=abs(ye-y(i));
   fprintf('%6.2f  %6.2f  %6.2f  %12.6f   %12.6f\n',x(i),y(i),z(i),ye,err(i))
end