close all
clear 
clc

t=-8:0.01:8;
A=4;
w=2*pi;
theta=pi/6;

y=A*sin(w*t+theta);
subplot(2,1,1);
plot(t,y);
xlabel('time');
ylabel('Sinosidel wave');
title('A*sin(w*t+theta)');


Noise= rand(1,y);
subplot(2,1,2);
plot(t,Noise);
xlabel('time');
ylabel('Sinosidel wave');
title('A*sin(w*t+theta)');
