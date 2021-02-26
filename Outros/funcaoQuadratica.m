%Criar matriz 2x2
A = [pi 30; -77 1];

%Divisão em cada dimensão
p = -10:1:10;

%Definir a função como uma matriz nula
Quad = zeros(length(p));

%Loop entre os nossos pontos 'p'
for i = 1:length(p)
    
    for j = 1:length(p)
        
        %Definir o vetor 'a' para cada iteração
        a = [p(i) p(j)]';
        
        %Computar a forma quadratica para a matriz A
        Quad(i,j) = (a' * A * a);
        QuadNorm(i,j) = (a' * A * a) / (a' * a);
    end
end

%Criar a superfície da função quadrática
figure(1), clf
surf(p,p,Quad'), shading interp;
title('Forma Quadrática a partir de uma matriz 2x2')
xlabel('a_1'), ylabel('a_2'), zlabel('Altura');
rotate3d on, axis square;

%Criar a superfície da função quadrática normalizada
figure(2), clf
surf(p,p,QuadNorm'), shading interp;
title('Forma Quadrática a partir de uma matriz 2x2')
xlabel('a_1'), ylabel('a_2'), zlabel('Altura');
rotate3d on, axis square;
