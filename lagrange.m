function lagrange(x,y,a)
% Determine the coefficients of the Lagrange
% interpolating polynomial p(x)and compute p(a).
n=length(x);
p=0;
for k=1:n
   b(k)=1;
   d(k)=1;
   for j=1:n
      if j~= k
         b(k)=b(k)*(x(k)-x(j));
         d(k)=d(k)*(a-x(j));
      end
   end
   c(k)=y(k)/b(k);
   p=p+c(k)*d(k);
end
c
fprintf('\n   p(a)= %10.6f',p)
fprintf('\n')