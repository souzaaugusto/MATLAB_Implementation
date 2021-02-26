% Definindo as constantes reais
sig = 20;
u = 15;
x = 0:0.1:100;

%Gaussiana
num = -(x-u).^2;
den = 2*sig^2;
A = 1/(sqrt(2*pi*sig^2));

y = A * exp(num / den);

figure(1), clf
plot(x,y,'linew',2)