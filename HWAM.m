[s,fs]=audioread('audio_in.wav');


duration = (1:length(s))/fs; 
subplot(5,1,1); plot(duration, s); 
audioLeft = s(:, 1); 



subplot(5,1,2);spectrogram(audioLeft,128,120,128,fs,'yaxis');

t=[0:length(audioLeft)-1]/fs;
t=t';  
f=1000;  
carrier_wave=sin(2*pi*t*f);

audiowrite('carrier_wave.wav',carrier_wave,fs)


subplot(5,1,3);plot(carrier_wave);

out=audioLeft.*carrier_wave;


audiowrite('am_modulated.wav',out,fs)
subplot(5,1,4);plot(duration,out);xlabel('Time(s)');
subplot(5,1,5);spectrogram(out,128,120,128,fs,'yaxis');









