
%Cálculo de tempo do timer com 555

Ra = 1000;
C = 10E-6;
T = 1.1*Ra*C;

%-------------------------------------
%Cálculo do oscilador com 555

Ra = 1000;
Rb = 10000;
C = 100E-9;

f = 1.44 / ((Ra + (2*Rb))*C)