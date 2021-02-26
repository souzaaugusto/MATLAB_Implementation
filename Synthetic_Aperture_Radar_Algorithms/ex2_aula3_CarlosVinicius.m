%Carlos Vinícius de Souza Augusto - ET-291
%Exercício 02 AULA 03
%=========================================================================%

%Criação dos parâmetros da interpolação com kernel
t=linspace(-2,2,2000);
u=linspace(-2,2,2000);
sq=[zeros(1,500),2*ones(1,1000),zeros(1,500)];
k=2;
N=[3,5,7,9,11,17,65,81]; % Diferentes kernels para interpolação

%Criação do método de ondulação de Gibbs
for n=1:8;
    gb=[];
    
for  m=1:N(n)
     gb=[an,2*k*sin(m*pi/2)/(m*pi)];
     
end

fN=k/2;
for m=1:N(n);
    fN=fN+gb(m)*cos(m*pi*t/2);
    
end;

nq=int2str(N(n));
subplot(5,2,n);
plot(u,sq,'r--','LineWidth',2);hold on;
plot(t,fN,'k','LineWidth',2); hold off; axis([-2 2 -0.5 2.5]);grid;

xlabel('Frequency'), ylabel('Magnitude');title(['Point Interpolator= ',nq]);

end;

