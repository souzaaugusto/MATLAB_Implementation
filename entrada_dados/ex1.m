
msg = 'Digite um numero: ';
maior = input(msg);
for i = 2:3
    var = input(msg);
    if var > maior
        maior = var;
    end
end

disp(['O maior numero é: ', num2str(maior)]);



%valores = zeros(1:3);
%for i = 1:3
%    valores(i) = input('Digite um numero: ');
%end

%maior = valores(1);

%if valores(2) > maior
%    maior = valores(2);
%end

%if valores(3) > maior
%    maior = valores(3);
%end

%disp(['O maior numero é: ', num2str(maior)]);