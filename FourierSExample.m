t=0:0.01:8;
y=sin(2*pi*t);
x=0;
for n=1:50
  x=x+(1/n)*sin(2*n*pi*t);                                                  % f=1
end
subplot(2,1,1);
plot(t,y,'b');
title('original');
subplot(2,1,2);
plot(t,x,'r');
title('Foruier series signal');