x = linspace(-5, 30, 1000); %Definindo o intervalo
y = zeros(size(x)); %Iniciando a função
%--------------------------------------------------------%
%Solucaçã 1
for i = 1:length(x)
    %Parte 1
   if x(i) <= -1
        y(i) = 0.0*exp(-1*x(i))
    %Parte 2
    elseif x(i) > -1 && x(i) <=0
        y(i) = 1
       %Parte 3 
    elseif x(i) > 0 && x(i) <= 3
       y(i) = x(i)^2 + 3*x(i)
       %Parte 4 
    elseif x(i) > 3 && x(i) <= 10
        y(i) = sin(2*pi*x(i))
       %Parte 5 
    elseif x(i) > 10
        
        y(i) = sqrt(x(i))
    end
end
figure(1), clf
plot(x,y,'linew',2)
%---------------------------------------------------------%

%Solução 2
%Encontrar os índices dos pontos

%xidc = dsearchn(x',[-1 0 3 10]')%função dsearchn procura o numero dentro de um vetor coluna

%Parte 1
%y(1:xidc(1)) = -0.01*exp(-x(1:xidc(1)));

%Parte 2
%y(xidc(1)+1:xidc(2)) = 1;

%Parte 3
%y(xidc(2)+1:xidc(3)) = x(xidc(2)+1:xidc(3)).^2 + 3 * x(xidc(2)+1:xidc(3));

%Parte 4
%y(xidc(3)+1:xidc(4)) = sin(2*pi * x(xidc(3)+1:xidc(4)));

%Parte 5
%y(xidc(4)+1:end) = sqrt(x(xidc(4)+1:end));

%hold on
%plot(x,y,'--','linew',4)
%---------------------------------------------------------------------%

%Solução 3

%Operação em linhas

%Vetor inicial
t = -5:.01:30;

%Em uma linha
f = (t <= -1).*-0.01.*exp(-1.*t) + (t> -1 & t <=0).*1 + (t>0 & t<=3).*(t.^2 + 3.*t)+ ...
    (t>3 & t<=10).*sin(2*pi.*t) + (t>10).*sqrt(t);

figure(1),clf
hold on
plot(t,f,'r--','linew',2)
plot(x,y,'linew',2)
xlabel('Time')
legend('Uma linha', 'Metodo 1')

