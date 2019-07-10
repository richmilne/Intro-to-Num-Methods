function finitediff(p,q,r,aa,bb,y0,yn,n)
fprintf('\n')
h=(bb-aa)/n;
blank='      ';
disp(['         Finite difference method with h = ',num2str(h)])
fprintf('\n')
for i=1:n-1
   x=aa+i*h;
   if (i~=1)
      a(i-1)=1-h/2*feval(p,x); %Compute the subdiagonal of A.
   end
   b(i)=-2+h^2*feval(q,x);  %Compute the main diagonal of A.
   if (i~=n-1)
      c(i)=1+h/2*feval(p,x); %Compute the superdiagonal of A.
   end
end
disp(' The subdiagonal of A =')
disp(a)
disp(' The main diagonal of A =')
disp(b)
disp(' The superdiagonal diagonal of A =')
disp(c)
% Compute the coefficient vector B.
d(1)=h^2*feval(r,aa+h)-y0*(1-h/2*feval(p,aa+h));
d(n-1)=h^2*feval(r,bb-h)-yn*(1+h/2*feval(p,bb-h));
for i=2:n-2
   x=aa+i*h;
   d(i)=h^2*feval(r,x);
end
fprintf('\n')
disp(' The Coefficient vector B'' =')
disp(d)
disp(' The solution of the BVP =')
fprintf('\n')
disp('    xi        yi           y(xi)      error')
fprintf('\n')
% Solve the tridiagonal system Ax=B.
for i=2:n-1
   ymult=a(i-1)/b(i-1);
   b(i)=b(i)-ymult*c(i-1);
   d(i)=d(i)-ymult*d(i-1);
end
y(n)=yn;
y(n-1)=d(n-1)/b(n-1);
for i=n-2:-1:1
   y(i)=(d(i)-c(i)*y(i+1))/b(i);
end
fprintf('%6.2f  %12.6f  %12.6f  %10.2e\n',aa,y0,y0,0)
for i=1:n
   x=aa+i*h;
   %Write the exact solution if known as s=s(x)
   %otherwise set s='n'.
   s='n';
   if (s=='n')
      fprintf('%6.2f  %12.6f\n',x,y(i))
   else
      % Compute the error
      err=abs(s-y(i));
      fprintf('%6.2f  %12.6f  %12.6f  %10.2e\n',x,y(i),s,err)
   end
end