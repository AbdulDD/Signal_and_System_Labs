clear all:
close all;
clc;


[signal,fs] = audioread('Speech.wav');
t=linspace(0,length(signal)/fs,length(signal));
plot(t,signal);
grid minor;
%{
t = -2*pi:.1:2*pi;
signal = sin(t);
plot(t,sin(t));
grid minor;

noise = randn(1,length(t));
noise = noise/10;
figure;
plot(t,noise);
grid minor;
%}
%mixed = noise + signal;
mixed = awgn(signal,1,10);
figure;
plot(t,mixed)
grid minor;
d=size(mixed)



k = -63:62;

figure;
%plot(fs,fftshift(abs(fft(signal))));
grid;
axis([min(k),max(k),0,63]);

figure;

%plot(fs,fftshift(abs(fft(mixed))));
grid;
axis([min(k),max(k),0,63]);
freq = 1/(fs);
sample_rate = 1/.1;
steep = 1;

h = firpm(100,[0 freq/(.5*fs) (freq+steep)/(.5*fs) 1],[1 1 0 0]);
d2=size(h)

figure;

f=[-50:50]*1/(pi*2*pi);

plot(f,fftshift(abs(fft(h))));

line([1/(2*pi) 1/(2*pi)],[0 1],'Linestyle',':','Color',[0 0 0 ]);
line([-1/(2*pi) -1/(2*pi)],[0 1],'Linestyle',':','Color',[0 0 0]);

grid on;


filtered = conv(h,mixed);
filtered = filtered(51:176);

figure;
plot(t,filtered);
grid
%{
figure;
plot(t,fftshift(abs(fft(filtered))));
grid;

%}