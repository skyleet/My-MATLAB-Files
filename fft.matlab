
clear all;
close all;

Fs = 8000;      %  Sampling rate
T = 5;          %  Recording time in seconds
nbits = 16;     %  Bits per sample
n
%  Check that input  device exists

if ( audiodevinfo(1,0,Fs,nbits,1) == 1)
    fprintf('Audio input device found\n');
else
    fprintf('No audio input device found\n')
return
end

%  Check that output audiodevice exists

if ( audiodevinfo(0,2,Fs,nbits,1) == 1)
    fprintf('Audio output device found\n');
else
    fprintf('No audio output device found\n')
    return
end

recorder = audiorecorder(Fs,nbits,1,0);


fprintf('Prepare to record your voice.\n');
fprintf('The recording will run for %d seconds\n', T)
fprintf('Hit spacebar when ready and begin to speak\n');
pause

%  Record for T seconds

recordblocking(recorder,T);

fprintf('Finished recording\n');

myvoice = getaudiodata(recorder); 

player = audioplayer(myvoice,Fs,16bits,2);

playblocking(player);

%  Plot my voice as a function of time

plot(myvoice);
title('My Voice')
xlabel('Time')
ylabel('myvoice(t)')

hold all

figure;

%  Fourier transform my voice

L = size(myvoice,1);

NFFT = 2^nextpow2(L);

fftmyvoice = fft(myvoice,NFFT)/L;

f = Fs/2*linspace(0,1,NFFT/2+1);

plot(f,2*abs(fftmyvoice(1:NFFT/2+1)));
title('Fourier Transform of My Voice')
xlabel('Frequency (Hz)')
ylabel('|myvoice(f)|')