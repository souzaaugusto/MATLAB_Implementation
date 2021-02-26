%Criar matriz 2x2
A = [pi 30; -77 1];

%Divis�o em cada dimens�o
p = -10:1:10;

%Definir a fun��o como uma matriz nula
Quad = zeros(length(p));

%Loop entre os nossos pontos 'p'
for i = 1:length(p)
    
    for j = 1:length(p)
        
        %Definir o vetor 'a' para cada itera��o
        a = [p(i) p(j)]';
        
        %Computar a forma quadratica para a matriz A
        Quad(i,j) = (a' * A * a);
        QuadNorm(i,j) = (a' * A * a) / (a' * a);
    end
end

%Criar a superf�cie da fun��o quadr�tica
figure(1), clf
surf(p,p,Quad'), shading interp;
title('Forma Quadr�tica a partir de uma matriz 2x2')
xlabel('a_1'), ylabel('a_2'), zlabel('Altura');
rotate3d on, axis square;

%Criar a superf�cie da fun��o quadr�tica normalizada
figure(2), clf
surf(p,p,QuadNorm'), shading interp;
title('Forma Quadr�tica a partir de uma matriz 2x2')
xlabel('a_1'), ylabel('a_2'), zlabel('Altura');
rotate3d on, axis square;
