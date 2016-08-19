clc
clear
syms s;
trfn=tf([25],[1 6 25]);
step(trfn)
