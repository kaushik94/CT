t = -10:.12:10;


x = sin(2*pi*t) - sin(2*pi*3*t);
Xf = abs(fft(x));
sinco = sinc([-1:.16:1]);
%stem(Xf)
X=conv(Xf,sinco)
%plot(X);


 