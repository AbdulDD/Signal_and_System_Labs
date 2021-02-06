%TASK:
%reading audio file from folder
[y,fs]=audioread('Music.mp3');
%sound(y,fs);
%plot(y);

%{
%time required for plotting
t=linspace(0,length(y)/fs,length(y));

T=1/fs;

%generate and add the WGN of power 10 to signal y.
noisesignal=awgn(y,1,10);
%sound(noisesignal,fs)

%averageing method
terms=1000;
for n=1:2:2*terms
    noisesignal= noisesignal + (1/n)*noisesignal;    
end
plot(t,noisesignal);
%}