clear all
close all
[s,fs]=audioread('audio_in.wav');

duration = (1:length(s))/fs; 
subplot(7,1,1); plot(duration, s);
audioLeft = s(:, 1);

subplot(7,1,2);spectrogram(audioLeft,128,120,128,fs,'yaxis');

t=[0:length(audioLeft)-1]/fs;

t=t(:); 


Fc=100;
carrier_signal=cos(2*pi*Fc*t);
subplot(7,1,3);plot(duration,carrier_signal);
audiowrite('carrier_wave.wav',carrier_signal,fs)

freqdev=50 
int_x = cumsum(audioLeft)/fs;
xfm = cos(2*pi*Fc*t + 2*pi*freqdev*int_x );
audiowrite('fm_modulated.wav',xfm,fs)

subplot(7,1,4);plot(duration,xfm);
subplot(7,1,5);spectrogram(xfm,128,120,128,fs,'yaxis');















