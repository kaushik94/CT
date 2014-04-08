t = 0:0.0001:0.1;
x = cos(2*pi*50*t);
fc = 500;

b = 1;
xfm = cos( 2*pi*500*t + b*sin(2*pi*50*t));

plot(xfm)
%stem(t,abs(fft(xfm)))