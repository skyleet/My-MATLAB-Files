while 1
%record your voice for 3 seconds
recobj = audiorecorder;
%disp('start speaking.');
recordblocking(recobj,0.2);
%disp('end of recording');
%play back the recording.
%store data in double in double precision arry.
myrecording=getaudiodata(recobj);
%plot the waveform
plot(myrecording)
end