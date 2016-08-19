clc
clear
A=[40 -10 -30;10 -30 5;30 5 -65];
B=[10;0;0];
X=inv(A)*B
fprintf('Current flowing through resistor Rb=%4.4f amperes',(X(3,1)-X(2,1)))
fprintf('\n Powewr supplied by 10V voltage source is %5.5f watts',10*X(1,1))