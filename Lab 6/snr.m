t = -10:.12:10;


x = sin(2*pi*t) - sin(2*pi*3*t);
Xf = abs(fft(x));
sinco = sinc([-1:.1:1]);
%stem(Xf)
X=conv(Xf,sinco);
%plot(X)


X = X/7.5;
qX = round(X);
%plot(qX);

noise = qX - X;
noiseamp = noise.*noise;
%plot(noiseamp);
signalamp = X.*X;
%plot(signalamp)
Y = noiseamp./signalamp
plot(Y)