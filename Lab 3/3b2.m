t = [0:.1:100]
w = 2*pi
a = cos(w.*t)
b = cos(2*w.*t)
c = cos(3*w.*t)
d = cos(4*w.*t)
sum = a+b+c+d
W = 2*pi*[-5:0.01:5]
f = W/(2*pi)

y = fftshift(fft(sum))
xF = abs(y)
xFang = abs(angle(y))


hFamp = f
hF = f.*exp(-1*i*W*0.25)
plot(angle(hF.*xF))
