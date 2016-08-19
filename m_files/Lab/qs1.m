clc
clear
A=[44 -10 -16 0;10 -43 6 12;16 6 -30 8;0 -12 -8 34];
I1=0;I2=0;I3=0;I4=0;
X=[I1;I2;I3;I4];
B=[20;0;12;40];
X=inv(A)*B
fprintf('the current in resisitor r2 is %3.4f',(X(1,1)-X(2,1)))