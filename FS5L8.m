subplot(2,2,1)
f=1;
y=0;
w=2*pi*f;
t=0:0.01:2; 
terms=1;
for n=1:2:2*terms;
    y= y + (1/n)*sin(n*w*t);    
end
plot(t,y)
title('Abdul muqtadar')
xlabel('Time')
ylabel('Fourier Square wave')
 
subplot(2,2,2)
f=1;
y=0
w=2*pi*f;
t=0:0.01:2; 
terms=3
for n=1:2:2*terms 
y= y + (1/n)*sin(n*w*t);    
end
plot(t,y)
title('Abdul muqtadar')
xlabel('Time')
ylabel('Fourier Square wave')
 
subplot(2,2,3)
f=1;
y=0
w=2*pi*f;
t=0:0.01:2; 
terms=10
for n=1:2:2*terms    
    y= y + (1/n)*sin(n*w*t);    
end
plot(t,y)
title('Abdul muqtadar')
xlabel('Time')
ylabel('Fourier Square wave')
 
subplot(2,2,4)
f=1;
y=0
w=2*pi*f;
t=0:0.01:2; 
terms=500
for n=1:2:2*terms
    y= y + (1/n)*sin(n*w*t);    
end
plot(t,y)
title('Abdul muqtadar')
xlabel('Time')
ylabel('Fourier Square wave')
