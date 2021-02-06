%d=designfilt('lowpassfir','filterorder',2,'cutofffreuency', 40, 'samplerate',fs);
%ouput= Filter(d,noisesignal);
%order = 5;
%[b,a] = butter(order,2500/(fs/2),'low');
%output = filter(b,a,noisesignal);
%sound(output, fs)
%t1 = (0:T:(length(output)-1)/fs);
%output = conv2(double(noisesignal), ones(3)/81, fs);

%d= size (function)  / gives vector size/ or array size