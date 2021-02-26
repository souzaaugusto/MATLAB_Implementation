%CARLOS VINÍCIUS DE SOUZA AUGUSTO
%Ex02 - RADAR DE ABERTURA SINTÉTICA - ET291
%CRIAÇÃO DE IMAGEM PARA ANÁLISE NO DOMÍNIO DO TEMPO E DA FREQUENCIA
%uTILIZANDO Transformada de Fourier de Rotação e Inclinação

%Criação da imagem com rotação 0
a=zeros(256,256);
a(78:178,78:178)=1;
figure(1);
subplot(2,6,1);
imshow(a);
title('0º');

%Imagem dominío frequencia com rotação 0º
af=fftshift(fft2(a));
subplot(2,6,2); 
imshow(log(abs(af)+1),[]);
title('0º');

%Imagem com rotação 20º
J = imrotate(a,15,'bilinear','crop');
subplot(2,6,3);
imshow(J);
title('15º');

%Imagem dominío frequencia com rotação 20º
jf=fftshift(fft2(J));
subplot(2,6,4);
imshow(log(abs(jf)+1),[]);
title('15º');

%Imagem com rotação 30º
J2 = imrotate(a,45,'bilinear','crop');
subplot(2,6,5);
imshow(J2);
title('45º');

%Imagem dominío frequencia com rotação 20º
kf=fftshift(fft2(J2));
subplot(2,6,6);
imshow(log(abs(kf)+1),[]);
title('45º');

%Criação Imagem com inclinação 0º
b=zeros(256,256);
b(78:178,78:178)=1;
figure(2)
subplot(2,6,1);
imshow(b);
title('0xº0yº');

%Imagem dominío frequencia com incilinação 0º
af2=fftshift(fft2(b));
subplot(2,6,2); 
imshow(log(abs(af2)+1),[]);
title('0xº0yº');

%Imagem com inclinação 0.5x 0yº
tform = affine2d([1 0 0; .7 1 0; 0 0 1]);
x = imwarp(b,tform);
subplot(2,6,3); 
imshow(x)
title('0.7xº0yº');

%Imagem dominío frequencia com incilinação 0.5x 0yº
af3=fftshift(fft2(x));
subplot(2,6,4); 
imshow(log(abs(af3)+1),[]);
title('0.7xº0yº');

%Imagem com inclinação 0x 0.5yº
tform2 = affine2d([1 .7 0; 0 1 0; 0 0 1]);
x2 = imwarp(b,tform2);
subplot(2,6,5); 
imshow(x2)
title('0xº0.7yº');

%Imagem dominío frequencia com incilinação 0x 0.5yº
af4=fftshift(fft2(x2));
subplot(2,6,6); 
imshow(log(abs(af4)+1),[]);
title('0xº0.7yº');
