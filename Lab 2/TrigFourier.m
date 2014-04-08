
%Trig Forier Series 

w=2*pi/10;	%used the formula. 
n=-100:1:100;	
a=(1./(10*n*w));	
b=(2*sin(n*w*2.5));
plot(a.*b);