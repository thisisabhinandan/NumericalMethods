%Gauss-Jacobi Method in MATLAB
%Author:R Abhinandan
%AM.EN.U4ME18040
A = [8 -3 2; 4 11 -1; 6 3 12]; %Change the equations
b = [20;33;35]; %Change the equations
x1(1)=0; x2(1)=0; x3(1)=0; %Enter your initial guesses
for i=1:50
    x1(i+1)=(b(1)-(A(1,2)*x2(i))-(A(1,3)*x3(i)))/A(1,1); 
    x2(i+1)=(b(2)-(A(2,1)*x1(i+1))-(A(2,3)*x3(i)))/A(2,2);
    x3(i+1)=(b(3)-(A(3,1)*x1(i))-(A(3,2)*x2(i)))/A(3,3); 
end
disp(x1(50));
disp(x2(50));
disp(x3(50));
%Coudn't plot graph for this 
   
    
    

