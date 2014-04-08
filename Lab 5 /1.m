N = 64;
f = 1/(N*2);
t = 0:1:128;
T = -1:0.02:1;

x = cos(2*pi*f*t);
X = upsample(x,2)

%stem(upsample(x,2));
zoh = [1,1];
foh = 1/2.*[1,2,1]
%stem(zoh)
Yz = conv(X,zoh);
Yf = conv(X,foh);
plot(Yf)

fs = f/2