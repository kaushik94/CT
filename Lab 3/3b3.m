t = [0:.01:10]
w = 2*pi
a = cos(w.*t)
b = cos(2*w.*t)
c = cos(3*w.*t)
d = cos(4*w.*t)
sum = a+b+c+d

W = 2*pi*[-50:0.1:50]
f = W/(2*pi);

y = fftshift(fft(sum*0.01))
xF = abs(y)
xFang = abs(angle(y))

hFang = 2*pi*sign(f)


hF = 1*exp(hFang*j)
ans = hF.*y;

plot(f,abs(ans))



