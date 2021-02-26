%definindo a matriz
m = 13;
n = 10;

%escolher o rank (posto matricial)
r = 5;

%Matriz de números aleatórios
A  =round(13*randn(m,n));

%Matriz SVD
[U,S,V] = svd(A);

%Reconstruir a matriz original e verificar se é igual
B = U * S * V';
round(A-B);

%Utilizando os primeiros r
A2 = U(:,1:r) * S(1:r,1:r) * V(:,1:r)';

%verificar rank e size
rank(A2);
size(A2);

%Imagem da matriz original
figure(1), clf
tam = [-1 1] * norm(A)/5 %escala do gráfico
subplot(131)
imagesc(A)
set(gca,'xtick', [], 'ytick', [], 'clim', tam)
axis image
title(['Matriz Original, rank=' num2str(rank(A))])%num2str converte numero para string
    
%Imagem da matriz reduzida
subplot(132)
imagesc(A2)
set(gca,'xtick', [], 'ytick', [], 'clim', tam)
axis image
title(['Matriz Reduzida, rank=' num2str(rank(A2))])

%Erro entre as matrizes
subplot(133)
imagesc(A-A2)
set(gca,'xtick', [], 'ytick', [], 'clim', tam)
axis image
title('Erro entre as matrizes')

    