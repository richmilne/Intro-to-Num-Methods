function derive(f,h,a,n)
% Approximate the derivative of a function at x=a
disp('       Derivative table')
disp('_________________________________________________________')
disp(' i   h            Di,1        Di,2        Di,3      ...  ')
disp('_________________________________________________________')
D(1,1)=(feval(f,a+h)-feval(f,a-h))/(2*h);
fprintf('%2.0f %8.4f %12.4f\n',1,h,D(1,1));
for i=1:n-1
   h=h/2;
   D(i+1,1)=(feval(f,a+h)-feval(f,a-h))/(2*h);
   fprintf('%2.0f %8.4f %12.4f',i+1,h,D(i+1,1));
   for k=1:i
      D(i+1,k+1)=D(i+1,k)+(D(i+1,k)-D(i,k))/((4^k)-1);
      fprintf('%12.4f',D(i+1,k+1));
   end
   fprintf('\n');
end
