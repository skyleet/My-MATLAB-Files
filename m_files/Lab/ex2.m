x=1:0.1:3;
y=1:0.1:3;
[X,Y]=meshgrid(x,y);
Z=sin(X.^2)+cos(Y.^2);
surf(X,Y,Z)