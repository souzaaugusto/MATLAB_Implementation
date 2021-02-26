%Dois vetores, um deles tem que ser complexo
a = [3 2];
b = [1 3j];

%transposta com '
a';
b';

%transposta com função transpose
transpose(b);

%transposta com .'
b.';

%matrizes
A = complex(round(10*(randn(5,4))),round(10*(randn(5,4))));

%Matriz hermitiana transposta
A';

%Matriz regular
A.';

%criar um vetor complexo
c = [3 4j];

%plot vetor c
figure(1), clf;
plot(real(c), imag(c), 'b', 'linew', 3);
axis([-1 1 -1 1] * norm(c) * 2);
xlabel('Eixo Real'), ylabel('Eixo imaginário');
grid on;

%tamanho do vetor é 5
ctamanho = sqrt(c * c.');
%consertando isso com matriz hermitiana
ctamanho = sqrt(c * c')

