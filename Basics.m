t=0:0.001:8;                                                                % defining time period
disp('this world is lying, you beating ill magar himat na harna.');         % to print on command window
disp('to take input.');
i= input('enter any number');                                               % User input(to take input from user)
w=i*pi;                                                                     % declearing and initialing variable
x=sin(w*t);                                                                 % function defined
y=cos(w*t);
plot(t, x, 'g', t, y, 'r');                                                 % multiple plots on one graph
grid on
text(2,0, 'sin(wt)');                                                       % to add text at desired position
text(.5,0, 'cos(wt)');
legend('sin(xt)','cos(xt)');                                                % to add strings in the top right
xlabel('t');                                                                % labeling x-axis
ylabel('f');                                                                % labeling y-axis
title('x=sin(xt)/y=cos(wt)');                                               % title to graph
disp('graph is plotted in figure at i');