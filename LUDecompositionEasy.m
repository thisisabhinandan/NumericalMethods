%LU Decomposition Method in MATLAB
%Author:R Abhinandan
%AM.EN.U4ME18040
A = [1 2 3; 2 8 11; 3 22 35]; b = [1;1;1]; %Change the equations
[L,U,P]=lu(A); %why implement when MATLAB gives you a predefined function? 
d=L\(P*b);
x=U\d;
disp(L); 
disp(U);
disp(x); 
