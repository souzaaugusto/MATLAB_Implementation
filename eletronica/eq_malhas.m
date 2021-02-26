
%MALHA 1
%M1: -V1+R1I1+R2I1-R2I2 = 0
%
%MALHA 2
%M2: R2I2-R2I1+R3I2+R4I2 = 0
%
%M1: (R1+R2)*I1-R2I2 = V1
%M2: -R2I1 + (R2-R3+R4)*I2 = 0
%
R1 = 1000;
R2 = 10000;
R3 = 4700;
R4 = 1500;
V1 = 12;

A = [(R1+R2) -R2
       -R2  (R2+R3+R4)] 

B = [V1 
      0]
  
Correntes = inv(A) * B  