clc
clear
A=[1 2 3;4 5 6;7 8 9]
B=A;
a=A(2:3,2:3)
B(3,:)=[];
b=B
c=size(A)
d=A(:)
e=A(end,:)
f=diag(A)

