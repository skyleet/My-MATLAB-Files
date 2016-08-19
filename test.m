clc
clear
A=[0 0 0;0 0 0;0 0 0];
B=[0 0 0;0 0 0;0 0 0];
if A-B==0
    fprintf('Same \n');
    rotate(3);
else
    fprintf('Different');
end