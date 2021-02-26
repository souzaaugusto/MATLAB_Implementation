% Crie a matriz
m = 4;
n = 3;

%N�meros inteiros aleat�rios
A = round(10 * randn(m,n)); % A fun��o round arredonda o valor para um n�mero inteiro
                            % multiplica��o por 10, para garantir que n�o teremos 0 na matriz
                            
%Criar c�pia da matriz original A
GramSch = A(:,1);
%Normalizar a primeira coluna, primeiro vetor
GramSch = A(:,1) / norm(A(:,1));

%Loop as colunas restantes
for i = 2:n % Como j� calculamos o primeiro vetor, podemos pular ele
    %Iniciar um vetor ortogonal
    ort = A(:,i);
    
    %Novo Loop para coluna de 'n', pois precisamos deixar o vetor ortogonal
    %a todas as colunas antteriores
    for j = 1:i-1
        %Primeiro precisamos calcular a proje��o (a'b/b'b)
        proj = dot(ort, GramSch(:,j)) / dot(GramSch(:,j),GramSch(:,j))
        ort = ort - proj * GramSch(:,j)
    end
    
    %nova coluna � uma proje��o normalizada
    GramSch(:,i) = ort / norm(ort);
end    

%Mostre que a coluna s�o ortogonais entre si
%Calcule o produto escalar entre as colunas
PE0 = sum(GramSch(:,1) .*GramSch(:,2));
PE1 = sum(GramSch(:,1) .*GramSch(:,1));

%Ortogonal pela multiplica��o matricial
Id1 = GramSch * GramSch'; %Dependendo da dimens�o da matriz, Gram Schmidt n�o funciona
Id2 = GramSch' * GramSch;

%Implementa��o melhor e mais est�vel, utilizando a decomposi��o QR
[Q,R] = qr(A);

%Na decomposi��o QR, a matriz Q por sua defini��o e uma matriz unit�ria e
%ortogonal
GramSch2 = Q;

%Mostrar que as colunas s�o ortogonais entre si
%Mostre que � ortogonal pela multiplica��o matricial
Id3 = GramSch2 * GramSch2'
Id4 = GramSch2' * GramSch2







