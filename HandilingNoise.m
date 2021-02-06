%TASK:
%reading audio file from folder
[y,fs]=audioread('Speech.mp3');
t=linspace(0,length(y)/fs,length(y));
%sound(y, fs)

%setting time period to be used ahead
T=1/fs;

%generate and add the WGN of power 10 to signal y.
noisesignal=awgn(y,1,10);
%sound(noisesignal)




%using guassian filter
sigma=10;
cutoff=ceil(3*sigma);
h=fspecial('gaussian',2*cutoff+1,sigma);
output=conv2(noisesignal,h,'same');
sound(output);
plot(output);




%{







%[Pxx,F] = periodogram(noisesignal,[],length(noisesignal),fs);
%plot(F,10*log10(Pxx))








%convolution
%h=[1 1 1];
%z=conv2(noisesignal,h,'same');
%sound(z);





%fn=fs/2;

%Methd 2# weiner filter
%output = wiener2(noisesignal);
%sound(output,fn);






%to denoise signal with low pass filter
order = 7;
[b,a] = butter(order,1000/(fs/2),'low');
filtered_sound = filter(b,a,noisesignal);
sound(filtered_sound, fs)
t1 = (0:T:(length(filtered_sound)-1)/fs);


%to calculate SNR of Signals
%R=snr(y,noisesignal);


%{
%to denoise signal with High pass filter
order = 7;
[b,a] = butter(order,1000/(fs/2),'high');
filtered_sound = filter(b,a,y);
%sound(filtered_sound, fs)
t2 = (0:T:(length(filtered_sound)-1)/fs);
%}

%plotting original signal noise and filtered signal
subplot(3,1,1);
plot(t, y, 'b');
xlabel('Time');
ylabel('Amplitude');
legend('original siganl');

subplot(3,1,2);
plot(t, noisesignal,'g');
xlabel('Time');
ylabel('Amplitude');
legend('noisey signal');




%{
subplot(3,1,3);
plot(t1,filtered_sound,'r');
xlabel('Time');
ylabel('Amplitude');
legend('low pass filtered');
%}
r= snr(y,noisesignal)




%{
subplot(4,1,4);
plot(t2,filtered_sound,'g');
xlabel('Time');
ylabel('Amplitude');
legend('High pass filtered');
%}




%}