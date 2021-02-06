%TASK:
%reading audio file from folder
[y,fs]=audioread('Music.mp3');
%sound(y, fs)

N=size(y,1);
%time required for plotting
t=linspace(0,length(y)/fs,length(y));

%T=1/fs;

%generate and add the WGN of power 5 to signal y.
noisesignal=awgn(y,1,10);
%sound(noisesignal,fs)







%plotting signal and noise added signal
subplot(2,1,1);
plot(t, y, 'b');
xlabel('Time');
ylabel('Amplitude');
legend('original siganl');


subplot(2,1,2);
plot(t, x, 'b');
xlabel('Time');
ylabel('Amplitude');
legend('noisey signal');
%}










%{
%[PsdY,F] = periodogram(y,[],length(y),fs);
[PsdNS,Fe] = periodogram(noisesignal,[],length(noisesignal),fs);

%plotting power spectral density of original signal and noisey signal
subplot(2,1,1);
plot(Fe,10*log10(PsdY));
xlabel('Frequency');
ylabel('Amplitude');
legend('original siganl spectral');

subplot(2,1,2);
plot(Fe,10*log10(PsdNS));
xlabel('frequency');
ylabel('Amplitude');
legend('noisey signal spectral');power spectral desity of original signal and noisey signal%}



%{

% Method#1: Designing low pass filter

d=designfilt('lowpassfir','FilterOrder', 7, 'CutoffFrequency',0.01, 'SampleRate', fs/2);

output= filter(d, noisesignal);
plot(output);
%sound(output,fs);

% Method#2: Using FIR filter
% Method#3: Using averaging filter
 







%}