x1 = [1, 2, 4, 5];%Tempo(min)
y1 = [3, 1, 10, 5];%Temperatura C
x2 = [3, 4, 1, 2];
y2 = [5, 2, 2, 1];

%plot(x1,y1, x2,y2);
figure;
plot(x1,y1, x2, y2, 'k--*');
legend('Temperatura x tempo', 'Teste');
xlabel('Tempo(min)');
ylabel('Temperatura \Theta(C)');
title('Evolução de Temperatura');

hold on

%plot(x2,y2, 'k--*');
%plot(x2,y2, 'r-.*'); 
%hold on;
%plot(x2,y2);
%hold off;


