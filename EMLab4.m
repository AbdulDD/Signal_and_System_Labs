t=0:0.001:8;                                                                % defining time period
disp('this world is lying, you beating ill magar himat na harna.');         % to print on command window
disp('to take input.');
i= input('enter any number');                                               % User input(to take input from user)
w=i*pi;                                                                     % declearing and initialing variable
x=0.8;                                                                 % function defined
y=.4;
z=.9;
subplot(3,1,1);                                                             % multiple plots on number of graphs
plot(t, x, 'g');
grid on
text(2,0, 'sin(wt)');                                                       % to add text at desired position
legend('sin(xt)');                                                          % to add strings in the top right
xlabel('V');                                                                % labeling x-axis
ylabel('I');                                                                % labeling y-axis
title('IV-graph');                                                         % title to graph

subplot(3,1,2);
plot(t, y, 'r');                                                            % multiple plots on number of graphs
grid on
text(.5,0, 'cos(wt)');                                                      % to add text at desired position
legend('cos(xt)');                                                          % to add strings in the top right
xlabel('V');                                                                % labeling x-axis
ylabel('P');                                                                % labeling y-axis
title('PV-graph');                                                         % title to graph

subplot(3,1,3);
plot(t, z, 'r');                                                            % multiple plots on number of graphs
grid on
text(.5,0, 'cos(wt)');                                                      % to add text at desired position
legend('cos(xt)');                                                          % to add strings in the top right
xlabel('V');                                                                % labeling x-axis
ylabel('PHI');                                                                % labeling y-axis
title('Cos ?sc');                                                         % title to graph