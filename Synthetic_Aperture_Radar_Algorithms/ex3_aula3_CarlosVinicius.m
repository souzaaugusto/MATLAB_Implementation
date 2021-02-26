%Carlos Vinicius de Souza Augusto - ET-291
%Exercicio 3 Aula 3

%Cria��o da imagem corner refletor
a=zeros(256,256);
a(1:8,1:8)=1;
a(248:256,1:8)=1;
a(1:8,248:256)=1;
a(248:256,248:256)=1;
figure(1);
subplot(1,3,1);
imshow(a);
title('corner reflector');

%Imagem no dom�nio da frequencia
af=fftshift(fft2(a));
subplot(1,3,2); 
imshow(log(abs(af)+1),[]);
title('domn�nio da frequ�ncia');

%Imagem com fun��o sinc
s2 = sinc(af);
subplot(1,3,3); 
imshow(log(abs(s2)+1),[]);
title('fun��o sinc');



