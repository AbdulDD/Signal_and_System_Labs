t=0:0.01:8;
x1=exp(0.5*t);
y1=-exp(0.5*t);
x2=exp(-0.5*t);
y2=-exp(-0.5*t);
plot(t, x1, 'b', t, y1, 'r', t, x2, 'y', t, y2, 'g');
