%Carlos Vinicius de Souza Augusto - ET-291
%Exercicio 2 Aula 4

%Gera��o do sinal de entrada
BW=5.8*10^6;%bandwidth
T=7.24*10^-6;%pulse width
fc=0; %zero centered frequency
n=fix(2*BW*T+1);% sampling points
sampling_interval = T / n;%sampling interval
freqlimit = 0.5/ sampling_interval;
alpha=BW/(T);%chirp rate
t=linspace(-T/2,T/2,n);%time interval
realp=cos(2*pi*((fc)*t+alpha*t.^2));%real part
ph = pi * alpha * t.^2; %signal phase

%Aplica��o de Fourier no sinal de entrada
X = fft(realp);

%Rampa linear de fase no dom�nio da frequencia
r1 = t.*fft(ph);

%Multiplica��o do sinal no dom�nio da frequencia pela rampa linear
r = r1.* X;

%Aplica��o da inversa de Fourier
inv = ifft(r);

%Gr�ficos
subplot(4,1,1);
plot(t,realp,'k');
title('Sinal entrada');
grid on;
subplot(4,1,2);
plot(t,abs(X),'b');
title('Alpica��o de Fourier');
grid on;
subplot(4,1,3);
plot(t,abs(r),'r');
title('Multiplica��o por rampa');
grid on;
subplot(4,1,4);
plot(t,abs(inv),'g');
title('Aplica��o da Inversa fourier');
grid on;