%Dados
data = 10.* randn(1,5);
data = round(data)

A = sort(data, 'ascend')
D = sort(data, 'descend')
%%

%Media, Mediana e Moda
data = round((10*randn(100,1)));

figure(1),clf
histogram(data,max(data))

%Calculo da media
n = numel(data);
mean1 = sum(data) / n;

%Calculo da Mediana
%Colocar em ordem os pontos
datasort = sort(data);

%Achar o valor do meio
median1 = datasort(round(n/2))

%Compara com a função do MatLab
median2 = median(data);

%Calculo da Moda
%Ache o valor dos dados, utilizando unique
uniquevals = unique(data);

%Loop entre os dados, para contar o numero de cada valor
numnums = zeros(size(uniquevals));

for i = 1:length(numnums)
    numnums(i) = sum(data == uniquevals(i))
end

%achar o maximo
[nda,maxind] = max(numnums);

%A moda e esse valor
themode = uniquevals(maxind)

%função do matlab
themode2 = mode(data)

hold on
plot([1 1]*mean1, get(gca,'ylim'),'b--','linew',2)
plot([1 1]*median1, get(gca,'ylim'),'b--','linew',2)
plot([1 1]*themode, get(gca,'ylim'),'b--','linew',2)

legend({'Data';'Media';'Mediana';'Moda'})
xlabel('Valores'),ylabel('Numero de Quantidade')
%%
%Variancia e Desvio Padrão
data = round((10*randn(100,1)));

figure(1),clf
histogram(data,max(data))

%Calculo da variancia
var1 = 0;
for i = 1:length(data)
    var1 = var1 + (data(i) - mean(data))^2
end

var1 = var1 / (lentgh(data) -1)

%Comparar com matlab
var2 = var(data)

%Calculo do desvio padrão
dataM = data- mean(data);

%Calculo do desvio padrão
std1 = 0;
for i = 1:length(dataM)
    std1 = std1 + dataM(i)^2
end

std1 = sqrt(std1 / (lentgh(dataM) -1));

%Compara com matlab
std2 = std(data)