function fourierTransform(Fs,y,R_wav,R_wav_fft)
y = y(:,1);
dt = 1/Fs;
t = 0:dt:(length(y)*dt)-dt;
subplot(2, 1, 1)
plot(t,y); xlabel('Length(in seconds)'); ylabel('Amplitude');
title(R_wav);
subplot(2, 1, 2)
plot(t, abs(fft(y))); xlabel('Frequency in Hz'); ylabel('Magnitude');
title(R_wav_fft);


end