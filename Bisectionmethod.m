%Bisection Method in MATLAB
%Author: R Abhinandan
%AM.EN.U4ME18040
f=@(x) x^3+4*x^2-10; %Change the function
a=1; b=2; %Change the inital values
i=0; tol=10^-5;
FA=f(a);
while i<100
    p = a+(b-a)/2;
    FP=f(p);
    if FP==0 || (b-a)/2<tol
        disp(p);
        break
    end
    i = i + 1;
    err(i)=abs((b-a)/2);
    if FA*FP>0
        a = p;
        FA = FP;
    else
        b = p;
    end
end
figure
plot(err)
grid on 
title('Convergence of Bisection')
ylabel('Error')
xlabel('Iterations')
axis ([0 16 0 10e-2]) %Change the '16' as per the 'i' value in the workspace, ie no of iterations required to compute the root
