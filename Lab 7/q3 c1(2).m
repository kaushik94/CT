fm =50;
fc = 20*fm;
wm = 2*pi*fm;
wc = 2*pi*fc;
t = -0:.0001:0.1;

u =1.2;
Ac = 10;

xt = cos(wm*t);
xt2 = cos((wm*t)+ pi/4);
xt3 = cos((wm*t)+ pi/2);

xtnorm = xt/max(xt3);
xdsbsc = Ac*xtnorm.*cos(wc*t);


%demodulation hereon

%multiply dsbsc with carrier
x = xdsbsc.*xt;


[y1,y2] = iir_butter(3,1/50,'low');
