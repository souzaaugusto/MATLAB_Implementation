x = 1:5;
y = rand(1,5);

%subplot(2,1,1);
%bar(x,y)
%subplot(2,1,2);
%plot(x,y, 'r')

subplot(2,2,1);
bar(x,y)
subplot(2,2,2);
plot(x,y, 'r')
subplot(2,2,3);
stem(x,y);