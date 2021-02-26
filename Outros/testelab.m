%Calculo de Ids com R=33K
delta1 = 17^2 - 4*-4*-5;
sDelta1 = sqrt(delta1);
ids1 = (-17 + sDelta1)/(2*-4);
ids2 = (-17 - sDelta1)/(2*-4);

%Calculo de Ids com R=22K
delta2 = 43.65^2 - 4*120.03e3*-3.51e-3;
sDelta2 = sqrt(delta2);
ids21 = (-43.65 + sDelta2)/(2*120.03e3);
ids22 = (-43.65 - sDelta2)/(2*120.03e3);

%Calculo de Ids com R=10K
delta3 = 19.84^2 - 4*24.8e3*-3.51e-3;
sDelta3 = sqrt(delta3);
ids31 = (-19.84 + sDelta3)/(2*24.8e3);
ids32 = (-19.84 - sDelta3)/(2*24.8e3);

%Calculo de Ids com R=1K
delta4 = 1.984^2 - 4*248*-3.51e-3;
sDelta4 = sqrt(delta4);
ids41 = (-1.984 + sDelta4)/(2*248);
ids42 = (-1.984 - sDelta4)/(2*248);

%Calculo de Ids com R=100
delta5 = 0.1984^2 - 4*2.48*-3.51e-3;
sDelta5 = sqrt(delta5);
ids51 = (-0.1984 + sDelta5)/(2*2.48);
ids52 = (-0.1984 - sDelta5)/(2*2.48);

%Plot do grafico IdsxVds
a = sqrt(ids1);
b = sqrt(ids21);
c = sqrt(ids31);
d = sqrt(ids41);
e = sqrt(ids51);

y = [a b c d e];
x = [-12.68 3.5 3.5 3.5 3.51];
plot(y,x);
xticks(0:3.5);
yticks(0.002:0.1221);
title('Gráfico da raiz de Ids x Vds com variação de R');
xlabel('tensão Vds');
ylabel('raiz de Ids');


