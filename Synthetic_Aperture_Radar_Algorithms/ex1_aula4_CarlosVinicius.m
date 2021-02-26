%Carlos Vinicius de Souza Augusto - ET291
%Exercicio 01 Aula 04

%Criação dos parâmetros
BW=5.8*10^6; %bandwidth 
T=7.24*10^-6; %pulse width  
fc=0; %zero centered frequency
n=fix(2*BW*T+1); % sampling points
sampling_interval = T / n; %sampling interval
freqlimit = 0.5/ sampling_interval;
K = BW/(T); %chirp rate
t=linspace(-T/2,T/2,n);%time interval

%Geração do sinal
realp = cos(2*pi*((fc)*t+K*t.^2));%real part
sf = K * t; %signal frequency
sph = pi * K * t.^2 %signal phase
imagp=sin(2*pi*((fc)*t+K*t.^2));%imaginary part

%plots
subplot(2,2,1)
plot(realp,'k') %plot real part
xlabel('Time relative'), ylabel('Amplitude')
title ('Real Part of signal');
grid on;
subplot(2,2,2)
plot(t,sph,'k') %plot signal phase
xlabel('Time relative'), ylabel('Radians')
title ('Signal Phase');
grid on;
subplot(2,2,3)
plot(imagp,'k') %plot imaginary part
xlabel('Time relative'), ylabel('Amplitude')
title ('Imaginary part of signal');
grid on;
subplot(2,2,4)
plot(t,sf,'k')  %plot signal frequency
xlabel('Time relative'), ylabel('MHz')
title ('Signal Frequency');
grid on;




