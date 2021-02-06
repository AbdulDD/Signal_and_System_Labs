syms t w

f1=cos(t)*heaviside(t);

f2=cos(5*t)*heaviside(t);

L1=fourier(f1,t,w);

L2=fourier(f2,t,w);

a = 2;

b = 3;

f=a*f1+b*f2;

L=fourier(f,t,w)

subplot(4,1,1)

ezplot(f)

ylabel('Function am1+bm2')

subplot(4,1,2)

ezplot(abs(L1))

ylabel('Fourier Transform of am1')

subplot(4,1,3)

ezplot(abs(L2))

ylabel('Fourier Transform of bm2')

subplot(4,1,4)

ezplot(abs(L))

ylabel('Fourier Transform of Function am1+bm2')

xlabel('danish tanveer  041-18-0019')

