x = -2* pi:0.01:2 * pi;
yEx = sin(x);

y1 = x;
y3 = y1 - (x.^3)/(3*2);
y5 = y3 - (x.^5)/(5*4*3*2);
y7 = y5 - (x.^7)/(7*6*5*4*3*2);

plot(x,yEx, x,y1, x,y3, x,y5, x,y7);
legend('Exato','y1','y3','y5','y7');
title('Comparação Série de Taylor')
grid on;