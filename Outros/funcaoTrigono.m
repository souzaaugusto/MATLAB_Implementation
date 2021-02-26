%Funções Discretas
%Parâmetros  da função
A = 5;   %amplitude da função 
phi = 2; %angulo de fase / defasagem
freq = 0.05;  % Frequencia
t = 0:0.1:10*pi;  %Tempo

%cosseno
w1 = A * cos(2*pi*freq*t + phi)

%Seno
w2 = A * sin(2*pi*freq*t + phi)

%Tangente
w3 = A * tan(2*pi*freq*t + phi)
w4 = A * (w2./w1)


%plot
figure(1),clf
plot(t,w1,'r','linew',2)
hold on
plot(t,w2,'b','linew',2)
hold on
xlabel('Tempo')
ylabel('Amplitude')
legend('Cos', 'Sin')

figure(2),clf
plot(t,w3,'k','linew',2)
hold on
plot(t,w4,'--s','linew',2)
hold on
xlabel('Tempo')
ylabel('Amplitude')
legend('Tan 1', 'Tan 2')

%Funções trigonometricas continuas do calculo
syms x
fplot(tan(x), [-4*pi 4*pi])
grid on
