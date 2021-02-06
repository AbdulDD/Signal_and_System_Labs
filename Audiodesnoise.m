clc;
clear all;
[x,fs] = audioread('male.wav');
sound(x,fs);
%%
y=0.1*randn(size(x));
z = x + y;

sound(z,fs)
%%
figure (1)
subplot(2,1,1)
plot(x)
title('Clear Voice')
subplot(2,1,2)
plot(z)
title('Noisy Voice')
%%
PSNR = 20*log10(255/sqrt(mean((z-x).^2)))
%% Finding PSD using Welch
Nfft=2048;
[Pxx,f] = pwelch(x,gausswin(Nfft),Nfft/2,Nfft,fs);
[Pzz,fz] = pwelch(z,gausswin(Nfft),Nfft/2,Nfft,fs);
[Pyy,fy] = pwelch(y,gausswin(Nfft),Nfft/2,Nfft,fs);

 %% Plot PSD of clean speech and noisy speech
figure 
subplot(2,1,1)
plot(f,Pxx);
ylabel('PSD of clean signal'); xlabel('Frequency (Hz)');
subplot(2,1,2)
plot(fz,Pzz);
ylabel('PSD of noisy sinal'); xlabel('Frequency (Hz)');

%%
len=length(z);

for j=2:len-1
z(j) = (z(j-1) + z(j) + z(j+1))/3 ;
end
%% Denoising speech using Gaussian Filter
g = gausswin(10);
 
% Apply convolution using Gaussian filter
 
g = g/sum(g);
 
y= conv(z(:,1), g, 'same');
 
% Apply signal smoothing using Savitzky-Golay smoothing filter.
 
result=sgolayfilt(y,1,17);
%%
PSNR_out = 20*log10(255/sqrt(mean((result-x).^2)))
%% PSD of output denoised speech
% PSD is The power spectrum of a time series describes the distribution of power into frequency components
[Pr,f] = pwelch(result,gausswin(Nfft),Nfft/2,Nfft,fs);
figure 
plot(f,Pr);
ylabel('PSD of denoised signal'); xlabel('Frequency (Hz)');
%% Listen to clean and denoised speech
%sound(z,fs)
sound(result,fs)
 %%

