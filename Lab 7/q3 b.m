fm =50;
fc = 20*fm;
wm = 2*pi*fm;
wc = 2*pi*fc;
t = -0.2:.001:0.2;

u =1.2;
Ac = 10;

xt = cos(wm*t) + 2*cos(2*wm*t) + 4*cos(3*wm*t) + 5*cos(5*wm*t);

xtnorm = xt/max(xt);
xdsbsc = Ac*xtnorm.*cos(wc*t);

plot(xdsbsc)