y=0;
f=1;
w=2*pi*f; 
t=0:0.01:2; 
 
for n=1:10    
    y= y + (1/n)*sin(n*w*t);    
end

plot(t,y)
title('Your Name') 
xlabel('Time')
ylabel('Fourier_Sawtooth wave') 
