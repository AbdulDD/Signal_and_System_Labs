amp=10;                             % amplification value
fs=1200;                            % sampling frequency
duration=2;                         % time duration setting
freq=100;                           % frequency 
values=0:1/fs:duration;             % setting values    
a=amp*sin(2*pi* freq*values);       % noise
sound(a);                           % playing noise sound
%subplot(3,1,1);
%plot(values,a,'b');
%xlabel('time');
%ylabel('amplitude');
%title('Noise');

y=sin(2*pi*70*values);              % generating sinosidel wave 
%sound(y*10);                        % playing sinosidel sound
%subplot(3,1,2);
%plot(values,y,'r');
%xlabel('time');
%ylabel('amplitude');
%title('Generated sinosidel');

x=a+y;                              % adding sinosidel with noise
%sound(x*10);                        % playing sound of new signal(x=a+y)
%subplot(3,1,3);
%plot(values,x,'g');
%xlabel('time');
%ylabel('amplitude');
%title('addition of noise and sinosidel');


% perform the convolution of 'a' with h=[1 1 1];
h=[1 1 1];
z=conv(x,h);
%sound(z);
subplot(2,2,1);
stem(z);
xlabel('time');
ylabel('amplitude');
title('convolution of z');

% perform the convolution of 'a' with h=[-1 -1 -1];
h1=[-1 -1 -1];
z1=conv(x,h1);
%sound(z1*100);
subplot(2,2,2);
stem(z1);
xlabel('time');
ylabel('amplitude');
title('convolution of z1');

% perform the convolution of 'a' with h=[0.1 0.1 0.1];
h2=[0.1 0.1 0.1];
z2=conv(x,h2);
%sound(z2*100);
subplot(2,2,3);
stem(z2);
xlabel('time');
ylabel('amplitude');
title('convolution of z2');

% perform the convolution of 'a' with h=[10 10 10];
h3=[10 10 10];
z3=conv(x,h3);
%sound(z3*100);
subplot(2,2,4);
stem(z3);
xlabel('time');
ylabel('amplitude');
title('convolution of z3');
