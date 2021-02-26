%parametros
x = -5:.01:5;
mi = 0;
b = 1/3;

%Definindo a função da distribuição de Laplace
f = exp(-abs(x-mi)/b) / (2*b);
%plot(f)

%Normalizando a densidade de probabilidade
f_pdf = f./ sum(f);

%Plot da PDF(Função Densidade de Probabilidade)
figure(1),clf
subplot(211)
plot(x,f_pdf,'linew',3)
xlabel('x'), ylabel('p(f(x))')
title 'Densidade de probabilidade'

%Plot da CFD (Função Distribuição Acumulada)
subplot(212)
plot(x,cumsum(f_pdf),'linew',2)
xlabel('x'), ylabel('Sigma p(f(x))')
title 'Função distribuição acumulada'

%========================================================================%
%Distribuição log-normal

%Parametros da função e o vetor x
x = linspace(0.001,7,100);
u = 0;
sigma = .5;

%Dividindo a PDF(Densidade de probabilidade) em duas partes
p1 = 1./(x * sigma * sqrt(2*pi))
p2 = exp(-(log(x) - u).^2/(2 * sigma.^2));

%Combinar as duas partes
logNormal = p1 .*p2

%Converter para densidade de probabilidade
logNormalPDF = logNormal./ sum(logNormal);

%Plot da PDF(Função Densidade de Probabilidade)
figure(2),clf
subplot(211)
plot(x,logNormalPDF,'linew',2)
xlabel('x'), ylabel('p(f(x))')
title 'Densidade de probabilidade'

%Plot da CFD (Função Distribuição Acumulada)
subplot(212)
plot(x,cumsum(logNormalPDF),'linew',2)
xlabel('x'), ylabel('Sigma p(f(x))')
title 'Função distribuição acumulada'

