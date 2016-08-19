function [ fresp ] = fres(Fs)
%FRES Spectral Analyser based on MIC input
% Set Fs, sampling rate

while 1
r=audiorecorder(Fs,8,1);
record(r)
pause(0.05)
stop(r)
y=getaudiodata(r);
L = length(y);
NFFT = 2^nextpow2(L); % Next power of 2 from length of y
Y = fft(y,NFFT)/L;
f = Fs/2*linspace(0,1,NFFT/2+1);

% Plot single-sided amplitude spectrum.
plot(f,2*abs(Y(1:NFFT/2+1)))
axis([0 Fs/2 0 0.01])
title('Single-Sided Amplitude Spectrum of y(t)')
xlabel('Frequency (Hz)')
ylabel('|Y(f)|')
end
end