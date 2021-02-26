%dimensão do vetor e da matriz
m = 7;

%vetor inicial
a = randn(m,1);

%função Hankel
H1 = hankel(a,a([end 1: end-1]));

%Loop
H2 = zeros(numel(a));
for i = 1:m
    H2(i,:) = a([i:m 1:i-1]);
end

%verificar se H1 e H2 são iguais
H1 - H2;

%Outra forma de criar a matriz de Hankel
a2 = [a; a; a; a];
for i = 1:m
    for j = 1:m
        H3(i,j) = a2(j+i-1);
    end    
end
%plot do vetor 'a' e da matriz Hankel
figure(1), clf
subplot(151)
imagesc(a);
axis image
set(gca, 'xtick',[],'ytick',[])
title('a')

subplot(1,5,2:5)
imagesc(H3);
axis image
set(gca, 'xtick',[],'ytick',[])
title('Hankel(a)')