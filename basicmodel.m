t=-8:0.1:8;
w=2*pi;

x=sin(w*t);
y=cos(w*t);
z=sawtooth(w*t);
a=-1.^(t);

subplot(2,1,1);
plot(t,x,'g',t,y,'r');
xlabel('amplitude');
ylabel('time');
title('sine and cosine wave');
legend('wave');


subplot(2,1,2);
plot(t,z,'b',t,a,'y');
xlabel('amplitude');
ylabel('time');
title('sawtooth and undeterminent wave');
legend('wave');