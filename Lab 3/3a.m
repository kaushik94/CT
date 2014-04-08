t = [0:.1:100]
w = 2*pi
a = cos(w*t)
b = cos(2*w*t)
c = cos(3*w*t)
d = cos(4*w*t)
sum = a+b+c+d

v = [-5:.01:5]

y = fftshift(fft(sum))
z = abs(y)
f = abs(angle(y))
plot(v,f)
