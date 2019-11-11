 [s_source fs_source]=audioread('audio_record.wav');

fs=fs_source;
s=s_source;
duration = (1:length(s))/fs; 
subplot(5,2,1); plot(duration, s); 
audioMono = (s(:, 1)+s(:,2))/2; 
subplot(5,2,2);specgram(audioMono, 256, fs); 
sound(s_source,fs_source)
audiowrite('audioout1.wav',s_source,fs_source);

fs=fs_source/2;
s=s_source;
duration = (1:length(s))/fs; 
subplot(5,2,3); plot(duration, s); 
audioMono = (s(:, 1)+s(:,2))/2; 
subplot(5,2,4);specgram(audioMono, 256, fs); 
audiowrite('audioout2.wav',s,fs);

fs=fs_source*2;
s=s_source;
duration = (1:length(s))/fs; 
subplot(5,2,5); plot(duration, s);
audioMono = (s(:, 1)+s(:,2))/2; 
subplot(5,2,6);specgram(audioMono, 256, fs); 
audiowrite('audioout3.wav',s,fs);

fs=fs_source;
s=s_source*2;
duration = (1:length(s))/fs; 
subplot(5,2,7 plot(duration, s); 
audioMono = (s(:, 1)+s(:,2))/2; 
subplot(5,2,8);specgram(audioMono, 256, fs);
audiowrite('audioout4.wav',s,fs);

fs=fs_source;
s=s_source/2;
duration = (1:length(s))/fs; 
subplot(5,2,9); plot(duration, s); 
audioMono = (s(:, 1)+s(:,2))/2; 
subplot(5,2,10);specgram(audioMono, 256, fs);
audiowrite('audioout5.wav',s,fs);





