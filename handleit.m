%TASK:
%reading audio file from folder
[sample_data,sample_rate]=audioread('Music.mp3');
%sound(y, fs)

%time required for plotting




%generate and add the WGN of power 10 to signal y.
noisesignal=awgn(sample_data,1,10);
%sound(noisesignal,fs)

sample_period = 1/sample_rate;
t = (0:sample_period:(length(noisesignal)-1)/sample_rate);
subplot(2,2,1)
plot(t,noisesignal)
title('Time Domain Representation - Unfiltered Sound')
xlabel('Time (seconds)')
ylabel('Amplitude') 
xlim([0 t(end)])
m = length(noisesignal); % Original sample length.
n = pow2(nextpow2(m)); % Transforming the length so that the number of 
% samples is a power of 2. This can make the transform computation 
% significantly faster,particularly for sample sizes with large prime 
% factors.
y = fft(noisesignal, n);
f = (0:n-1)*(sample_rate/n);
amplitude = abs(y)/n;
subplot(2,2,2)
plot(f(1:floor(n/2)),amplitude(1:floor(n/2)))
title('Frequency Domain Representation - Unfiltered Sound')
xlabel('Frequency')
ylabel('Amplitude')



%%2)  Filter the audio sample data to remove noise from the signal.
order = 7;
[b,a] = butter(order,1000/(sample_rate/2),'low');
filtered_sound = filter(b,a,noisesignal);
%sound(filtered_sound, sample_rate)
t1 = (0:sample_period:(length(filtered_sound)-1)/sample_rate/2);
subplot(2,2,3)
plot(t,filtered_sound)
title('Time Domain Representation - Filtered Sound')
xlabel('Time (seconds)')
ylabel('Amplitude')
xlim([0 t1(end)])
m1 = length(noisesignal); % Original sample length.
n1 = pow2(nextpow2(m1)); % Transforming the length so that the number of 
% samples is a power of 2. This can make the transform computation 
% significantly faster,particularly for sample sizes with large prime 
% factors. 
y1 = fft(filtered_sound, n1);
f = (0:n1-1)*(sample_rate/n1);
amplitude = abs(y1)/n1;
subplot(2,2,4)
plot(f(1:floor(n1/2)),amplitude(1:floor(n1/2)))
title('Frequency Domain Representation - Filtered Sound')
xlabel('Frequency')
ylabel('Amplitude')

