clc
clear
syms s;
cltf=tf([10 25],[0.16 1.96 10 25]);
%step(cltf)
bode(cltf)
grid on