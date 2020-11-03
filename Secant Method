%Secant Method in MATLAB
%Author:R Abhinandan
%AM.EN.U4ME18040
f=@(x) x-cos(x); %Change the function
p0=0.5;          %Change the initial value
p1=pi/4;         %Change the initial value
q0=f(p0);
q1=f(p1);
tol=10^-5;
i=0;
while i<100
    i=i+1;
    p = p1-q1*(p1-p0)/(q1-q0);
    err(i)=abs(p-p1);
    if abs(p-p1)<tol
        disp(p);
        break
    end
    p0 = p1;
    q0 = q1;
    p1 = p;
    q1 = f(p);
end
figure
plot(err)
title('Convergence of Secant')
ylabel('Error')
xlabel('Iterations')
axis ([0 4 0 10e-5]) %change the '4' as per the 'i' value in the workspace, ie no of iterations required to compute the root
