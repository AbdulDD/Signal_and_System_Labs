syms t
x= exp(-2*t)*heaviside(t);
FT=fourier(x);
w=0:0.01:2*pi;
subplot(2,1,1);
plot(abs(1./(1i*w+2)));
ylabel('Magnitude');
xlabel('Frequency');
title('Magnitude response');
subplot(2,1,2);
plot(atan(imag(1./(1i*w+2))./real(1./(1i*w+2))));
ylabel('Phase[deg]');
xlabel('Frequency');
title('Phase[deg] response');