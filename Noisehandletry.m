close all
clc
clear all

%TASK:
%reading audio file from folder
[y,fs]=audioread('Music.mp3');
%sound(y, fs)

%time required for plotting
t=linspace(0,length(y)/fs,length(y));


%generate and add the WGN of power 5 to signal y.
noise= wgn(1,1,10);
%sound(noise,fs)
 
h=conv2(y,noise);
sound(h,fs);
plot(h);