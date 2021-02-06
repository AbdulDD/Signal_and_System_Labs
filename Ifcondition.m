t=0:0.001:8;
f= input('input value of ferquency');
w=f*pi;
x=sin(w*t);
y=cos(w*t);
disp('select 1 for sine-wave graph');
disp('select 2 for cos-wave graph');
n= input('what do you want to be selected.');
if n==1;
    plot(t,x,'g');
else
    if n==2;
        plot(t,y,'r');
    else
        disp('can not plot');
    end
end