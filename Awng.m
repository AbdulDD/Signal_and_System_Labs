 t=(0:0.1:10)';
 x=sawtooth(t);
 y=awgn(x,1,'measured');
 plot(t,[x y])
