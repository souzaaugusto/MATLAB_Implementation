
%calculo de amplificador inverso para n iterações

R1 = 1E3;

for R2 = 1E3:1E3:100E3

AV = R2/R1;

A = [R2 AV];

disp(A);

end