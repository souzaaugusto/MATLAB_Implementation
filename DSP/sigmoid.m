%sigmoid parameters
A = 1; %Amplitude
B = 1; %Stepness
C = 0; %Centro

%vetor de X
x = linspace(-5,5,400);

%Sigmoid
%sigm = 1./(1 + exp(-x))
sigm = 1./(1 + exp(-B*(x - C)))

%Plot
figure(1), clf
plot(x,sigm,'linew',3)
hold on
plot([0 0], get(gca,'ylim'), 'k--')
title 'Sigmoid (Função Logística)'

%Linha horizontal em y = A/2
plot(get(gca,'xlim'),[1 1]* A/2,'m--')
xlabel('x'), ylabel('f(x)')

%Tangente hiperbpolica
tgh = (exp(x) - exp(-x))./(exp(x) + (exp(-x)))
figure(2),clf
plot(x,tgh,'linew',2)
hold on
plot(x,tanh(x),'r--')
xlabel('x'), ylabel('f(x)')
title 'Tangente Hiperbólica'

%Arco Tangente
figure(3), clf
plot(x,atan(x),'linew',2)
xlabel('x'), ylabel('f(x)')
title 'Arco Tangente'

%Função Algébrica
figure(4),clf
fAlg = x./(sqrt(1 + x.^2))
fAlg2 = x./(1 + abs(x))
plot(x,fAlg,'linew',2)
hold on
plot(x,fAlg2,'linew',2)
legend('$\frac{x}{\sqrt{1+x^2}}$','$\frac{x}{1+|x|}$')
set(legend,'Interpreter','latex');
set(legend,'FontSize',17);
xlabel('x'), ylabel('f(x)')
title 'Função Algébrica'

%Função Gudermaniana
figure(5), clf
gud = 2 * atan(tanh(x/2))
plot(x,gud,'linew',2)
xlabel('x'), ylabel('f(x)')
title 'Função Gudermaniana'

%Função Sinal
figure(6),clf
plot(x,sign(x),'linew',2)
xlabel('x'), ylabel('f(x)')
title 'Função Sinal'

%Função Error
figure(7),clf
plot(x,erf(x),'linew',2)
xlabel('x'), ylabel('f(x)')
title 'Função Error'

%Todas juntas
figure(8),clf
plot(x,sigm,'linew',2)
hold on
plot(x,tanh(x),'linew',2)
hold on
plot(x,atan(x),'linew',2)
hold on
plot(x,fAlg,'linew',2)
hold on
plot(x,fAlg2,'linew',2)
hold on
plot(x,gud,'linew',2)
hold on
plot(x,sign(x),'linew',2)
hold on
plot(x,erf(x),'linew',2)
hold on
plot(x,x,'linew',2)
legend('Sig', 'Tanh','Atan','Falg','Falg2','Gud','Signal','Error','Identidade')
xlabel('x'), ylabel('f(x)')
title 'Todas funções'


