clc
clear all
close all


t = 0:0.0001:.01;
X = 50 * sinc (100*t) .* sinc (100*t);

fs = 1/0.0001;
f = linspace(-fs/2,fs/2,length(t));
fd = 150;
fm = 100;

Bt = 2*(fd + fm)

fc = 500;

for i = 1:length(t)
	inte(i) = sum(50 * (sinc (100*t(1:i))) .^2);
end
	
xfm = cos(2*pi*fc*t + 1.5*inte);
%plot(f,abs(fft(xfm)))
%plot(t,xfm)

%making a BPF, we attempt the next two questions
[a,b] = iir_butter(7,[250*0.0001:750*0.0001]);
x = filter(b,a,xfm);
%plot(t,x)
subplot(2,1,1)
plot(f,abs(fft(xfm)))
subplot(212)
plot(f,abs(fft(x)))
