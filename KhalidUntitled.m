       
x = [2 3 7 5];
y = [1 3 4 1];
X = fft(x);
Y = fft(y);

a=7;
b=4;
x = a*x;
y = b*y;
z = x + y;
LHS = fft(z);
 
 
X = a*X;
Y = b*Y;
Z = X + Y;
RHS = Z;
disp('Jameel Ahmed');
disp('LHS = ');
disp(LHS);
disp('RHS = ');
disp(RHS);
 
subplot(2,1,1)
plot(LHS)
title('Jameel Ahmed (LHS)');
subplot(2,1,2)
plot(RHS)
title('Jameel Ahmed (RHS)');
