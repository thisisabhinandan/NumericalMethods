%Mullers Method in MATLAB
%Author: R Abhinandan
%AM.EN.U4ME18040
f=@(x) x^4-3*x^3+x^2+x+1; %Change the function
p0=0.5; p1=-0.5; p2=0; %Change the inital values
tol=10^-5; h1 = p1-p0; h2 = p2-p1; d1=(f(p1)-f(p0))/h1; d2=(f(p2)-f(p1))/h2; d=(d2-d1)/(h2 + h1); i = 3;
while i<100
    b = d2 + h2*d;
    D = (b^2-4*f(p2)*d)^0.5;
    if abs(b-D)<abs(b+D)
        E=b+D;
    else
        E=b-D;
    end
    h = -2*f(p2)/E;
    p = p2 + h;
    if abs(h)<tol
        disp(p);
        break
    end
    p0 = p1;
    p1 = p2;
    p2 = p;
    h1 = p1 - p0;
    h2 = p2 - p1;
    d1 = (f(p1)-f(p0))/h1;
    d2 = (f(p2)-f(p1))/h2;
    d = (d2-d1)/(h2 + h1);
    i = i + 1;
    err(i)=abs(h);
end
figure
plot(err)
grid on 
title('Convergence of Mullers')
ylabel('Error')
xlabel('Iterations')
axis ([4 9 0 10e-2]) %Don't change the '4'. Change the '9' as per the 'i' value in the workspace, ie no of iterations required to compute the root   
