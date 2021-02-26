%Dimens�o da matriz
m = 10;

%Verificar os vetores LI
rank(randn(m,m))

%gerar a matriz M x M-1 e preencher a coluna final
A = randn(m,m-1);
%O posto matricial tem que ser m-1
size(A);
rank(A);

%m�todo mais facil
A(:,m) = A(:,3); %igualar a qualquer coluna
size(A);
rank(A);

%Combina��o linear aleat�ria
CombLin = randn(1,m-1);

%Recriar a matriz
A = randn(m, m-1);

%Realizar a soma para ter a coluna final
%A(:,m) = sum(A(:,1:m-1).*repmat(CombLin,m,1),2)
A(:,m) = sum(bsxfun(@times, A,CombLin),2)
rank(A)
size(A)
    