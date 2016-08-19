clc
clear
A=[3 9 1;4 8 6;8 2 0];
a=sort(A,1,'descend')
b=sort(A,2,'descend')
B=eig(A)
[P,Q]=eig(A)
