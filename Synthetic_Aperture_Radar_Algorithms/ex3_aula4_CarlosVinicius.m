%Carlos Vinicius de Souza Augusto - ET-291
%Exercicio 3 Aula 4

%Par�metros do sinal e filtro
waveform = phased.LinearFMWaveform('PulseWidth',1e-4,'PRF',5e3,...
    'SampleRate',1e6,'OutputFormat','Pulses','NumPulses',1,...
    'SweepBandwidth',1e5);
wav = getMatchedFilter(waveform);
filter = phased.MatchedFilter('Coefficients',wav);
taylorfilter = phased.MatchedFilter('Coefficients',wav,...
    'SpectrumWindow','Taylor');
sig = waveform();

%Gera��o do filtro utilizando Taylor
rng default
x = sig + 0.75*(randn(length(sig),1) + 1j*randn(length(sig),1));
y = filter(x);
y_taylor = taylorfilter(x);
t = linspace(0,numel(sig)/waveform.SampleRate,...
    waveform.SampleRate/waveform.PRF);

%Cria��o do sinal com ru�do
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

%Cria��o do sinal com compress�o
sf = fft(x);
ff = fft(y_taylor);
mf = sf.*ff;
sc = fftshift(ifft(mf));

%Gera��o do sinal de fase com compress�o
db = log(y);
ph2 = angle(db);

%Gr�ficos
subplot(2,2,1)
plot(t2,x2,'b')
title('Sinal com Ru�do')
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
title('Sinal compress�o')
grid on;
xlabel('Tempo u')
ylabel('Magnitude(db)')
hold on
subplot(2,2,4)
plot(t.*10^-2,ph2,'k')
title('Sinal de fase compress�o')
grid on;
xlabel('Tempo u')
ylabel('Fase(rads)')
