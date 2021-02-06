t=0:0.01:8;
x1=exp(0.5*t);
y1=-exp(0.5*t);
x2=6*exp(-45*t);
plot(t, x1, 'b', t, y1, 'r', t, x2, 'y');