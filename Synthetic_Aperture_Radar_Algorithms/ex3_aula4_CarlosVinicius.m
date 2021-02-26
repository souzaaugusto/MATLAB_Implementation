%Carlos Vinicius de Souza Augusto - ET-291
%Exercicio 3 Aula 4

%Parâmetros do sinal e filtro
waveform = phased.LinearFMWaveform('PulseWidth',1e-4,'PRF',5e3,...
    'SampleRate',1e6,'OutputFormat','Pulses','NumPulses',1,...
    'SweepBandwidth',1e5);
wav = getMatchedFilter(waveform);
filter = phased.MatchedFilter('Coefficients',wav);
taylorfilter = phased.MatchedFilter('Coefficients',wav,...
    'SpectrumWindow','Taylor');
sig = waveform();

%Geração do filtro utilizando Taylor
rng default
x = sig + 0.75*(randn(length(sig),1) + 1j*randn(length(sig),1));
y = filter(x);
y_taylor = taylorfilter(x);
t = linspace(0,numel(sig)/waveform.SampleRate,...
    waveform.SampleRate/waveform.PRF);

%Criação do sinal com ruído
BW=10.8*10^6;
T=40.24*10^-6;
fc=0; 
n=fix(2*BW*T+1);
sampling_interval = T / n;
freqlimit = 0.5/ sampling_interval;
K=BW/(T);
t2=linspace(-T/2,T/2,n);
realp=cos(2*pi*((fc)*t2+K*t2.^2));%real part
ph = pi * alpha * t2.^2 %signal phase

%Sinal com ruido
SNR = 2.5;
x2 = randn(size(realp))*std(realp)/db2mag(SNR);

%Criação do sinal com compressão
sf = fft(x);
ff = fft(y_taylor);
mf = sf.*ff;
sc = fftshift(ifft(mf));

%Geração do sinal de fase com compressão
db = log(y);
ph2 = angle(db);

%Gráficos
subplot(2,2,1)
plot(t2,x2,'b')
title('Sinal com Ruído')
grid on
xlabel('Tempo u')
ylabel('Amplitude')
hold on
subplot(2,2,2)
plot(t,abs(y),'g')
title('Sinal com Filtro Taylor')
grid on
xlabel('Tempo u')
ylabel('Amplitude')
hold on
subplot(2,2,3)
plot(t.*10^-2,sc./1000,'r')
title('Sinal compressão')
grid on;
xlabel('Tempo u')
ylabel('Magnitude(db)')
hold on
subplot(2,2,4)
plot(t.*10^-2,ph2,'k')
title('Sinal de fase compressão')
grid on;
xlabel('Tempo u')
ylabel('Fase(rads)')
