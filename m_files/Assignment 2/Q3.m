clc
clear
r1=10;
r2=20;
r3=40;
r4=50;
A=[(1/r1)+(1/r2),-1/r1,-1/r2;-1/r1,(1/r1)+(1/r3)+(1/r4),-1/r3;-1/r2,-1/r3,(1/r2)+(1/r3)];
I=[5;0;2];
V=inv(A)*I