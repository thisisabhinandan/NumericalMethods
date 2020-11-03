%Fixed Point Iteration Method in MATLAB
%Author: R Abhinandan
%AM.EN.U4ME18040
%x^3+4x^2−10=0 [1,2] 
p0=1.5; 
f=@(x) 0.5*(10-x^3)^0.5; %After manipulating it to x=f(x) format 
tol=10^-5;
i=0; 
while i<100
   p=f(p0); 
   if abs(p-p0)<tol 
       disp(p); 
       break
   end 
   i=i+1;
   err(i)=abs(p-p0); 
   p0=p;
end 
figure
plot(err)
title('Convergence of Fixed Point Iteration')
ylabel('Error')
xlabel('Iterations')
axis ([0 16 0 10e-3]) %Change the '16' as per the 'i' value in the workspace, ie no of iterations required to compute the root   
