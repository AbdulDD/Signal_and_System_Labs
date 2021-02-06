tic
x = [-10 : 10];
unit_step = @(x) (x >= 0);
y=unit_step(x)-unit_step(x-5);
stem(x, y);
toc