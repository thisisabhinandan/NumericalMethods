%Newton Raphson Method in MATLAB
%Author: R Abhinandan
%AM.EN.U4ME18040
f=@(x) cos(x)-x; %Change the function
der=@(x) -sin(x)-1; %Compute the derivative of the function
p0=0.5; p1=pi/4; %Change the inital values
tol=10^-5;
i = 1;
while i<100
    p=p0-(f(p0)/der(p0));
    if abs(p-p0)<tol
        disp(p);
        break;
    end
    i = i + 1;
    err(i)=abs(p-p0);
    p0 = p;
end
figure
plot(err)
title('Convergence of Newton Raphson')
ylabel('Error')
xlabel('Iterations')
axis ([2 4 0 10e-2]) %Dont change the '2'. Change '4' as per the 'i' value in the workspace, ie no of iterations required to compute the root
