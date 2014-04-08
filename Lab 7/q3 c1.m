fm =50;
fc = 20*fm;
wm = 2*pi*fm;
wc = 2*pi*fc;
t = -0:.0001:0.1;

u =1.2;
Ac = 1;

xt = cos(wm*t);
xt2 = cos((wm*t)+ pi/4);
xt3 = cos((wm*t)+ pi/2);

xtnorm = xt/max(xt);
xdsbsc = Ac*xt.*cos(wc*t);


%demodulation hereon

%multiply dsbsc with carrier
x = xdsbsc.*cos(wc*t);


[y1,y2] = iir_butter(11,0.1);
Y=filter(y1,y2,x);

plot(xt);
hold on;
plot(Y,'r');