%False Position Method in MATLAB
%Author: R Abhinandan
%AM.EN.U4ME18040
f=@(x) x-cos(x); %Change the function
p0=0.5; p1=pi/4; %Change the inital values
tol=10^-5;
i = 2;
q0=f(p0);
q1=f(p1);
while i<100
    p = p1-q1*(p1-p0)/(q1-q0);
    if abs(p-p1)<tol
        disp(p);
        break
    end
    i = i + 1;
    err(i)=abs(p-p1);
    q = f(p);
    if q*q1<0
        p0 = p1;
        q0 = q1;
    end
    p1 = p;
    q1 = q;
    
end
figure
plot(err)
grid on 
title('Convergence of False Position')
ylabel('Error')
xlabel('Iterations')
axis ([3 5 0 10e-2]) %Dont Change the '3'. Change '5' as per the 'i' value in the workspace, ie no of iterations required to compute the root
