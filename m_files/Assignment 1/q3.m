clc
clear
A=[3 7 -1.5;0 3.2 1;1/9 -12 0];
B=[9;2;0];
X=inv(A)*B
X=linsolve(A,B)
