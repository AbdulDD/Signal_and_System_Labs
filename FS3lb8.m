t=0:0.01:8;
f=1;
w=2*f*pi;
x=0;
x=(1./1)*sin(1*w*t);
subplot(2,2,1);
plot(t,x);
xlabel('Frequency');
ylabel('original at n=1');

for n=1:3
x=x+(1./n)*sin(n*w*t);
end
subplot(2,2,2);
plot(t,x);
xlabel('Frequency');
ylabel('Wave with n=3');

for n=1:10
x=x+(1./n)*sin(n*w*t);
end
subplot(2,2,3);
plot(t,x);
xlabel('Frequency');
ylabel('Wave with n=10');

for n=1:50
x=x+(1./n)*sin(n*w*t);
end
subplot(2,2,4);
plot(t,x);
xlabel('Frequency');
ylabel('Wave with n=50');