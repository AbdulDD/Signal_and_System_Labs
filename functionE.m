% function take arguments and you type function name and its necessary
% arguments on command window
function [y]=functionE(x)
z = 'enter number';
x = input(z);
y=x;
if y>=0;
    disp('given number is positive');
end
if y<0;
    disp('given number is negative');
end
