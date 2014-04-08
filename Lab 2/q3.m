%plot(rectpulse([-1:0.01:1],0.5));
%T=[-6*pi:0.1:6*pi];
%plot(T,square(T,50));
n=[0:1:500]
[X, T] = gensignal('square', 10,50,0.01)
a=(1/(-2*pi*n))*sin(n*pi)
plot(a)
%plot(T,X)