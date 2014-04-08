W = 2*pi*[0:0.1:20];
[b,a] = iir_butter(3,2*pi*1000,'s');

for g = 1:1:201
num = 0;
den = 0;
 for h = 0:1:3
 num = num+ b(4-h)*power(i*W(g),h);
den = den+ a(4-h)*power(i*W(g),h);
end
hf(g) = num/den;
end

hf2 = abs(power(hf,2));

plot(W,hf2)