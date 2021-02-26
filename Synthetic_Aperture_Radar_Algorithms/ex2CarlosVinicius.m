%CARLOS VIN�CIUS DE SOUZA AUGUSTO
%Ex02 - RADAR DE ABERTURA SINT�TICA - ET291
%CRIA��O DE IMAGEM PARA AN�LISE NO DOM�NIO DO TEMPO E DA FREQUENCIA
%uTILIZANDO Transformada de Fourier de Rota��o e Inclina��o

%Cria��o da imagem com rota��o 0
a=zeros(256,256);
a(78:178,78:178)=1;
figure(1);
subplot(2,6,1);
imshow(a);
title('0�');

%Imagem domin�o frequencia com rota��o 0�
af=fftshift(fft2(a));
subplot(2,6,2); 
imshow(log(abs(af)+1),[]);
title('0�');

%Imagem com rota��o 20�
J = imrotate(a,15,'bilinear','crop');
subplot(2,6,3);
imshow(J);
title('15�');

%Imagem domin�o frequencia com rota��o 20�
jf=fftshift(fft2(J));
subplot(2,6,4);
imshow(log(abs(jf)+1),[]);
title('15�');

%Imagem com rota��o 30�
J2 = imrotate(a,45,'bilinear','crop');
subplot(2,6,5);
imshow(J2);
title('45�');

%Imagem domin�o frequencia com rota��o 20�
kf=fftshift(fft2(J2));
subplot(2,6,6);
imshow(log(abs(kf)+1),[]);
title('45�');

%Cria��o Imagem com inclina��o 0�
b=zeros(256,256);
b(78:178,78:178)=1;
figure(2)
subplot(2,6,1);
imshow(b);
title('0x�0y�');

%Imagem domin�o frequencia com incilina��o 0�
af2=fftshift(fft2(b));
subplot(2,6,2); 
imshow(log(abs(af2)+1),[]);
title('0x�0y�');

%Imagem com inclina��o 0.5x 0y�
tform = affine2d([1 0 0; .7 1 0; 0 0 1]);
x = imwarp(b,tform);
subplot(2,6,3); 
imshow(x)
title('0.7x�0y�');

%Imagem domin�o frequencia com incilina��o 0.5x 0y�
af3=fftshift(fft2(x));
subplot(2,6,4); 
imshow(log(abs(af3)+1),[]);
title('0.7x�0y�');

%Imagem com inclina��o 0x 0.5y�
tform2 = affine2d([1 .7 0; 0 1 0; 0 0 1]);
x2 = imwarp(b,tform2);
subplot(2,6,5); 
imshow(x2)
title('0x�0.7y�');

%Imagem domin�o frequencia com incilina��o 0x 0.5y�
af4=fftshift(fft2(x2));
subplot(2,6,6); 
imshow(log(abs(af4)+1),[]);
title('0x�0.7y�');
