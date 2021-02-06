clc;
close all;
clear;
[Clean, sample_rate] = audioread('Music.mp3');


sample_data= awgn(Clean,1,10);

signal = medfilt1(sample_data,90);      % Applying median filter
%_______________________________________________________________________________%
Fs = sample_rate;                       % Sampling Frequency (Hz)
Fn = Fs/2;                              % Nyquist Frequency (Hz)
Wp = 1000/Fn;                           % Passband Frequency (Normalised)
Ws = 1010/Fn;                           % Stopband Frequency (Normalised)
Rp =   1;                               % Passband Ripple (dB)
Rs = 150;                               % Stopband Ripple (dB)
[n,Ws] = cheb2ord(Wp,Ws,Rp,Rs);         % Filter Order
[z,p,k] = cheby2(n,Rs,Ws,'low');        % Filter Design
[soslp,glp] = zp2sos(z,p,k);    % Convert To Second-Order-Section For Stability
filtered_sound2 = filtfilt(soslp, glp, signal);
%_______________________________________________________________________________%
fs2_d = [filtered_sound2,filtered_sound2];
%sound(fs2_d, sample_rate)
subplot(4,1,1);
plot(sample_data);            % Original Signal
title('Original Signal');
xlabel('Time (s)'); ylabel ('Amplitude');
subplot(4,1,2);
plot(filtered_sound2);          % Filtered output
title('Filtered Signal Double');
xlabel('Time (s)'); ylabel ('Amplitude');

sound(filtered_sound2,sample_rate);


subplot(4,1,3);
plot(fs2_d);         % Filtered output
title('Filtered Signal Double');
xlabel('Time (s)'); ylabel ('Amplitude');
subplot(4,1,4);
plot(Clean);                  % Expected output
title('Expected Signal');
xlabel('Time (s)'); ylabel ('Amplitude');