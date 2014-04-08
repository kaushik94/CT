N = 64;
f = 100;
t = 0:1/700:0.1;


x = cos(2*pi*f*t) + cos(2*pi*2*f*t)+ cos(2*pi*3*f*t);
X = abs(fft(x));
plot(t,X)
