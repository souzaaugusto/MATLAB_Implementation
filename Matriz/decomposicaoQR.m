
d = 6;
A = round(20 * randn(d));

[Q,R] = qr(A);

QR_in = R^(-1) * Q'
in = inv(A);

M1 = A * QR_in;
M2 = A * inv(A);

subplot(233)
imagesc(M1), axis image
set(gca, 'xtick',[],'ytick',[])
title('A * A^(-1) = M1 = I')

subplot(235)
imagesc(in), axis image
set(gca, 'xtick',[],'ytick',[])
title('A^(-1) usando inv()')

subplot(236)
imagesc(M2), axis image
set(gca, 'xtick',[],'ytick',[])
title('A^(-1) usando inv()')

subplot(131)
imagesc(A), axis image
set(gca, 'xtick',[],'ytick',[])
title('A')

subplot(232)
imagesc(QR_in), axis image
set(gca, 'xtick',[],'ytick',[])
title('A^(-1) usando QR')