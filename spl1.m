function spl1(x,y,c)
% First degree spline.
n=length(x);
for i=n-1:-1:2
   dis=c-x(i);
   if(dis>=0)
      break
   end
end
if(dis<0)
  i=1;
  dis=c-x(1);
end
m=(y(i+1)-y(i))/(x(i+1)-x(i));
spl1=y(i)+m*dis;
% print the results.
disp('                 linear spline')
disp('_________________________________________________________')
disp(['        x             y            c = ',num2str(c),'     '])
disp('_________________________________________________________')
for j=1:n
   fprintf('%12.6f  %12.6f ',x(j),y(j))
   if (j==i)
      fprintf('\n                               S(c)= %10.6f',spl1)
   end;
   fprintf('\n')
end

 
