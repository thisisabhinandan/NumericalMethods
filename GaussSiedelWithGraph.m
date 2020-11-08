%Gauss-Siedel Method in MATLAB
%Author:R Abhinandan
%AM.EN.U4ME18040 
A=[4 2 3 8; 3 -5 2 -14; -2 3 8 27]; %Enter a Diagonally-Dominant Matrix (Augmented) and don't use this
x1=[0;0;0]; %Enter your initial guesses
tol=10^-6; n=3; k = 1;
while  k <= 100
    for i = 1 : n
        s = 0;
        for j = 1 : n
            s = s-A(i,j)*x1(j);
        end
        s = (s+A(i,n+1))/A(i,i);
        x1(i) = x1(i) + s;
    end
    err(k)= abs(s);
    if abs(s) <= tol
        break;
    else
        k = k+1;
    end
end
disp(x1);
figure
plot(err)
grid on
title('Convergence of Gauss-Siedel')
ylabel('Error')
xlabel('Iterations')
axis ([0 12 0 10e-5]) %Change the '12' as per the 'k' value in the workspace, ie no of iterations required to compute the solution 
