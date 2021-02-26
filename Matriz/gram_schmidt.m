% Crie a matriz
m = 4;
n = 3;

%Números inteiros aleatórios
A = round(10 * randn(m,n)); % A função round arredonda o valor para um número inteiro
                            % multiplicação por 10, para garantir que não teremos 0 na matriz
                            
%Criar cópia da matriz original A
GramSch = A(:,1);
%Normalizar a primeira coluna, primeiro vetor
GramSch = A(:,1) / norm(A(:,1));

%Loop as colunas restantes
for i = 2:n % Como já calculamos o primeiro vetor, podemos pular ele
    %Iniciar um vetor ortogonal
    ort = A(:,i);
    
    %Novo Loop para coluna de 'n', pois precisamos deixar o vetor ortogonal
    %a todas as colunas antteriores
    for j = 1:i-1
        %Primeiro precisamos calcular a projeção (a'b/b'b)
        proj = dot(ort, GramSch(:,j)) / dot(GramSch(:,j),GramSch(:,j))
        ort = ort - proj * GramSch(:,j)
    end
    
    %nova coluna é uma projeção normalizada
    GramSch(:,i) = ort / norm(ort);
end    

%Mostre que a coluna são ortogonais entre si
%Calcule o produto escalar entre as colunas
PE0 = sum(GramSch(:,1) .*GramSch(:,2));
PE1 = sum(GramSch(:,1) .*GramSch(:,1));

%Ortogonal pela multiplicação matricial
Id1 = GramSch * GramSch'; %Dependendo da dimensão da matriz, Gram Schmidt não funciona
Id2 = GramSch' * GramSch;

%Implementação melhor e mais estável, utilizando a decomposição QR
[Q,R] = qr(A);

%Na decomposição QR, a matriz Q por sua definição e uma matriz unitária e
%ortogonal
GramSch2 = Q;

%Mostrar que as colunas são ortogonais entre si
%Mostre que é ortogonal pela multiplicação matricial
Id3 = GramSch2 * GramSch2'
Id4 = GramSch2' * GramSch2







