%CARLOS VINÍCIUS DE SOUZA AUGUSTO - ET291
%Exercício 2 Aula 05
%==========================================================================

%FIGURA 1

%Geração do sinal
%BW=4.5*10^6; %bandwidth 
%T=7.31*10^-6; %pulse width  
%fc=0; %zero centered frequency
%n=fix(2*BW*T+1); % sampling points
%sampling_interval = T / n; %sampling interval
%freqlimit = 0.5/ sampling_interval;
%K = BW/(T); %chirp rate
%t=linspace(-T/2,T/2,n);%time interval
%f = K.*t;
%realp = cos(2*pi*((fc)*t+K*t.^2));%real part
%imagp=sin(2*pi*((fc)*t+K*t.^2));%imaginary part

%Filtro casado
%s1 = rectangularPulse(f/(abs(K)*T));
%exp = -j*(2*pi)*f*t(1);
%sout = s1.^exp;

%Aplicação do Filtro casado no espctro da parte real e imaginária
%realp2 = ifft(imagp);
%imagp2 = ifft(realp).*sout;

%plots
%subplot(1,2,1);
%plot(f,realp2,'b');
%grid on;
%xlabel('Frequency (cells)');
%ylabel('Amplitude');
%title('Real Part of Spectrum');
%subplot(1,2,2);
%plot(f,imagp2,'r');
%grid on;
%xlabel('Frequency (cells)');
%ylabel('Amplitude');
%title('Imaginary Part of Spectrum');
%==========================================================================

%FIGURA 2

%Geração do sinal
%BW=5.8*10^6; %bandwidth 
%T=7.42*10^-6; %pulse width  
%fc=0; %zero centered frequency
%n = 777;% sampling points
%sampling_interval = T / n; %sampling interval
%freqlimit = 0.5/ sampling_interval;
%K = BW/(T); %chirp rate
%t=linspace(-T/2,T/2,n);%time interval
%f = K.*t;
%realp = cos(2*pi*((fc)*t+K*t.^2))/723;%real part
%sph = pi * K *t.^2; %signal phase

%Aplicação do filtro na parte real do sinal e na fase
%freal = T*sinc(f*T);
%fphase = pi*sinc(K.*t.^2);

%Aplicação do sinal de fase compresso
%sreal = fft(realp);
%sf = fft(fphase);
%pro_signal = sreal.*sf;
%sout2 = log(fftshift(ifft(pro_signal)));

%Plots
%subplot(2,2,1);
%plot(t,realp,'b');
%grid on;
%xlabel('Time realtive (us)');
%ylabel('Amplitude');
%title('Real part of original signal');
%subplot(2,2,2);
%plot(t,log(freal),'r');
%grid on;
%xlabel('Time realtive (us)');
%ylabel('Magnitude(dB)');
%title('Compressed signal (expanded)');
%ylim([-14.8 -11.5]);
%subplot(2,2,3);
%plot(t,freal,'g');
%grid on;
%xlabel('Time realtive (us)');
%ylabel('Amplitude');
%title('Real part of Compressed signal');
%subplot(2,2,4);
%plot(t,angle(sout2),'k');
%grid on;
%xlabel('Time realtive (us)');
%ylabel('Phase(rad)');
%title('Compressed signal phase(expanded)');
%==========================================================================

%FIGURA 3

%Geração do sinal
%BW=5.8*10^6; %bandwidth 
%T=7.42*10^-6; %pulse width  
%fc=0; %zero centered frequency
%n=777;
%sampling_interval = T / n; %sampling interval
%freqlimit = 0.5/ sampling_interval;
%K = BW/(T); %chirp rate
%t=linspace(-T/2,T/2,n);%time interval
%f = K.*t;

%Geração da parte real do sinal e da parte real do espectro
%realp = cos(2*pi*((fc)*t+K*t.^2));
%sph = pi * K *t.^2; %signal phase

%Janela no domínio do tempo e da frequencia
%k = kaiser(150,2.5);
%fk = fftshift(k);

%Geração da parte real do espectro com o filtro casado
%s1 = rectangularPulse(sph);
%exp = +j*pi*K*t.^2;
%sout = s1.^exp;
%frs = sph.* realp;
%sout2 = fftshift(ifft(frs)).*sout;


%Plots
%subplot(2,2,1);
%plot(k,'b');
%grid on;
%xlabel('Time (u2)');
%ylabel('Amplitude');
%title('Time domain window');
%subplot(2,2,2);
%plot(fk,'b');
%grid on;
%xlabel('Frequency(cells)');
%ylabel('Amplitude');
%title('Frequency domain window');
%subplot(2,2,3);
%plot(t,realp,'k');
%grid on;
%xlabel('Time (u2)');
%ylabel('Amplitude');
%title('Real part of signal');
%ylim([-1 1]);
%subplot(2,2,4);
%plot(f,sout2,'k');
%ylim([-5 5]);
%grid on;
%xlabel('Frequency (cells)');
%ylabel('Amplitude');
%title('Real part of spectrum');
%==========================================================================

%FIGURA 4

%Geração do sinal
%BW=17.2*10^6; %bandwidth 
%T=42*10^-6; %pulse width  
%fc=0; %zero centered frequency
%n = 777;
%sampling_interval = T / n; %sampling interval
%freqlimit = 0.5/ sampling_interval;
%K = BW/(T); %chirp rate
%t=linspace(-T/2,T/2,n);%time interval
%f = K.*t;
%realp = cos(2*pi*((fc)*t+K*t.^2));
%sph = pi * K *t.^2; %signal phase

%Geração da janela Kaise no tempo e frequencia
%ka = kaiser(150,2.5);
%ka2 = fftshift(ka);

%Geração do sinal DFT conjugado e saída filtrado
%st = conj(fft(realp));
%sout1 = (ka.*st).^+j* pi*K.*t.^2;

%Geração do sinal de fase DFT do espectro da fase de saida
%fsph = conj(fft(sph));
%sout2 = (ka2.*fsph).^+j* pi*K.*t.^2;

%plots
%subplot(2,1,1);
%plot(t,log(sout1),'k');
%grid on;
%xlabel('Frequency');
%ylabel('Magnitude');
%title('Magnitude of spectrum of weighted matched filter');
%subplot(2,1,2);
%plot(f,log(sout2),'k');
%grid on;
%xlabel('Frequency');
%ylabel('Phase');
%title('Phase of marched filter spectrum');
%==========================================================================

%FIGURA 5

%Geração da janela Kaiser no dominio do tempo e frequencia
%k = kaiser(150,2.5);
%si2 = fftshift(k);

%Geração do sinal
%BW=17.2*10^6; %bandwidth 
%T=42*10^-6; %pulse width  
%fc=0; %zero centered frequency
%n = 777;
%sampling_interval = T / n; %sampling interval
%freqlimit = 0.5/ sampling_interval;
%K = BW/(T); %chirp rate
%t=linspace(-T/2,T/2,n);%time interval
%f = K.*t;

%sampling rate
%fs = 18.5*10^6;
%newf = (0.5*fs).*t;

%Geração do sinal da fse com filtro
%si3 = T*sinc(si2);

%Geração do sinal da frequencia
%ins = fftshift(newf);

%plots
%subplot(3,1,1);
%plot(si2,'k');
%grid on;
%xlabel('Frequency');
%ylabel('Magintude');
%title('Magintude of matched filter in the frequency domain');
%subplot(3,1,2);
%plot(ins,'k');
%grid on;
%xlabel('Frequency');
%ylabel('Frequency(MHz)');
%title('Instantaneous frequency of matched filter in the frequency domain');
%subplot(3,1,3);
%plot(si3,'k');
%grid on;
%xlabel('Frequency');
%ylabel('Phase(radians)');
%title('Phase of matched filter in the frequency domain');
%==========================================================================

%FIGURA 6

%Criação do sinal
%BW=5.8*10^6; %bandwidth 
%T=7.24*10^-6; %pulse width  
%fc=0; %zero centered frequency
%n = 401;
%sampling_interval = T / n; %sampling interval
%freqlimit = 0.5/ sampling_interval;
%K = BW/(T); %chirp rate
%t=linspace(-T/2,T/2,n);%time interval
%f = K.*t;
%realp = cos(2*pi*((fc)*t+K*t.^2));

%Sinal no vetor
%realp_array = [realp,t,realp, t, realp];

%Sinal filtrado no vetor
%mf_realp = T*sinc(f*T); 
%mf_realp_out1 = [mf_realp, mf_realp, mf_realp];

%Sinal filtrado deslocado no domínio da frequencia 
%mf_shift = fftshift(mf_realp);
%mf_shift_out2 = [mf_shift, mf_shift, mf_shift];

%plots
%subplot(3,1,1);
%plot(realp_array,'b');
%xlim([0 2000]);
%grid on;
%xlabel('Time(samples)');
%ylabel('Magnitude');
%title('Real part of signal in the input array');
%subplot(3,1,2);
%plot(mf_shift_out2,'r');
%xlim([0 1200]);
%grid on;
%xlabel('Time(samples)');
%ylabel('Magnitude');
%title('Mached filter output, optino 2');
%subplot(3,1,3);
%plot(mf_realp_out1,'k');
%xlim([0 1200]);
%grid on;
%xlabel('Time(samples)');
%ylabel('Magnitude');
%title('Mached filter output, optino 3');
%==========================================================================

%FIGURA 7
%Criação da janela Kaiser
%k = kaiser(150,2.5);

%Criação do sinal
%BW=2.5*10^6; %bandwidth 
%T=17.24*10^-6; %pulse width  
%fc=0; %zero centered frequency
%n = 401;
%sampling_interval = T / n; %sampling interval
%freqlimit = 0.5/ sampling_interval;
%K = BW/(T); %chirp rate
%t=linspace(-T/2,T/2,n);%time interval
%f = K.*t;

%Criação do sinal IRW Broadening
%qpe = pi * k * (T/2)^2;
%k2 = k.*qpe;

%Criação do sinal PSLR
%x = 1:5;
%k1 = 0:500;
%n1 = -1:3;
%X = x * (exp(-j*pi/500)).^(n1'*k1);
%k4 = angle(X);

%Criação do sinal ISLR
%k3 = log(k2) * 2.8;

%Plots
%subplot(1,3,1);
%plot(abs(qpe),k2,'k');
%grid on;
%xlabel('|QPE|');
%ylabel('Broadening, percent');
%title('IRW Broadening');
%subplot(1,3,2);
%plot(k1/500,k4/pi,'k');
%grid on;
%xlabel('|QPE|');
%ylabel('PSLR, dB');
%title('PSLR');
%subplot(1,3,3);
%plot(abs(qpe),k3,'k');
%grid on;
%xlabel('|QPE|');
%ylabel('ISLR, dB');
%title('ISLR');
%==========================================================================

%FIGURA 8

%Criação do sinal
%BW=5.5*10^6; %bandwidth 
%T=17.42*10^-6; %pulse width  
%fc=0; %zero centered frequency
%n = 800;
%sampling_interval = T / n; %sampling interval
%freqlimit = 0.5/ sampling_interval;
%K = BW/(T); %chirp rate
%t=linspace(-T/2,T/2,n);%time interval
%f = K.*t;
%realp = cos(2*pi*((fc)*t+K*t.^2));
%sph = pi * K *t.^2; %signal phase

%Criação do sinal com filtro casado
%fphase = T*sinc(sph);
%frealp = fft(realp);
%fsph = fft(fphase);
%frs = frealp.* fsph;
%sfc = fftshift(ifft(frs));
%sout1 = sfc*(0.28*pi);%aplicando QPE
%sout2 = sfc*(0.1*pi);%aplicando QPE

%plots
%subplot(1,2,1);
%plot(t,log(sout1),'k');
%grid on;
%xlabel('Sample number');
%ylabel('Magintude dB');
%title('|QPE| < 0.28pi');
%ylim([-9 -6.8]);
%subplot(1,2,2);
%plot(t,log(sout2),'k');
%grid on;
%xlabel('Sample number');
%ylabel('Magintude dB');
%title('|QPE| > 0.28pi');
%ylim([-10 -7.8]);
%==========================================================================
