fm =50;
fc = 20*fm;
wm = 2*pi*fm
wc = 2*pi*fc
t = -.01:.0001:.01;

u =1.2;
Ac = 10;

xt = cos(wm*t) + 2*cos(2*wm*t) + 4*cos(3*wm*t) + 5*cos(5*wm*t);

xtnorm = xt/max(xt);
xamt = Ac*cos(wc*t) + Ac*u*(xtnorm.*cos(wc*t));

plot(t,xamt)
