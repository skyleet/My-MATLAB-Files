clc
clear
syms s;
oltf=tf([25],[1 6 0]);
pid=pid(1.5,0,0);
fb = feedback(oltf*pid,1);
step(fb)