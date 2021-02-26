m = 50;
%Criar um vetor
a = randn(m,1);

%Matriz de hankel
H = hankel(a,a([m 1:m-1]));
%imagesc(H);

%Decompor Autovalores e Autovetores
[V,D]= eig(H);

%Organizar V e D de maneira crescente
[valores,num] = sort(diag(D),'descend');
V = V(:,num)

%Plot dos Autovalores
figure(1), clf
subplot(141);
plot(valores, 's-','markerfacecolor', 'b', 'linew',2);
ylabel('\lambda'), xlabel('Ordem');
title('Espectro de \lambda');

%Plot Autovetores
subplot(1,4,2:4)
imagesc(V)
title('\lambda em ordem pelos Autovetores')

%Outro exemplos
figure(2), clf
plot(V(:,[6 20 50]), 'linew',3)
title('Alguns Autovetores')
