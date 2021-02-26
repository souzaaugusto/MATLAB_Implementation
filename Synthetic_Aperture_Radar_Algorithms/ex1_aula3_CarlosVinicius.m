%Carlos Vinicius de Souza Augusto - ET 291
%Exercicio 01 Aula 03

%Geração da janela Kaiser com diferentes tipos de Beta
w = kaiser(50,0);
w2= kaiser(50,2.5);
w3= kaiser(50,3.5);
w4= kaiser(50,4.5);
w5= kaiser(50,5.5);
w6= kaiser(50,6.5);
w7= kaiser(50,7.5);
w8= kaiser(50,8.5);
w9= kaiser(50,9.5);

wvtool(w,w2,w3,w4,w5,w6,w7,w8,w9)