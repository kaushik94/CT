t = 0:0.0001:.1;

fs = 1/0.0001;
f = linspace(-fs/2,fs/2,length(t));

xp = 10*cos(2*pi*1000*t);
xs = 10*cos(2*pi*9000.*t);



Xp = abs(fft(xp));
Xs = abs(fft(xs));
%plot(f,Xp);
Hp = 1./sqrt(1+power(f/800,10));
Yp = Xp.*Hp;

HP = abs(Hp);



%phase = zerophase(Hp);

Fs(1) = 0
for i = 2:length(t)
	Fs(i) = Hp(i)-Hp(i-1);
end

plot(f,angle(Hp))

