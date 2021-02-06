n=-8:8;
t1=2;
% here as x[nT]=x[n] therfore equations become 
x1=(4*(n*t1))./2+(n*t1).^2;
t2=3;
x2=(4*(n*t2))./2+(n*t2).^2;
t3=0.5;
x3=(4*(n*t3))./2+(n*t3).^2;
hold on
stem(n,x1,'green');
stem(n,x2,'red');
stem(n,x3,'blue');