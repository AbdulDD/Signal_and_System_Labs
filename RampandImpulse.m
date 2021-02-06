n=1:50;
x = [1 : 10];
unit_step = @(x) (x >= 0);
y=unit_step(x);

subplot(2,1,1);
stem(x, y)
subplot(2,1,2);
stem(n,n);

