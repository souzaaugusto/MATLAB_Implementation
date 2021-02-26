%CARLOS VINÍCIUS DE SOUZA AUGUSTO
%Ex01 - RADAR DE ABERTURA SINTÉTICA - ET291
%PROVA DA PROPRIEDADE DE DESLOCAMENTO DA TRANSFORMADA DE FOURIER

%Geração de sinal no domínio do tempo
N = 100;
n = 0:99;
w = 2*pi/N;
x = cos(5*w*n);

%Geração do sinal no domíno da frequencia
X = fft(x,N);
w = 0:2*pi/N:2*pi-2*pi/N;
w = w-pi;
subplot(4,1,1);
plot(n,x);
subplot(4,1,2);
plot(w,abs(X));

%Geração do sinal no tempo deslocado
subplot(4,1,3);
y1 = fftshift(x);
plot(w,abs(y1));

%Geração do sinal na frequencia deslocado
subplot(4,1,4);
y = fftshift(X);
plot(w,abs(y));





