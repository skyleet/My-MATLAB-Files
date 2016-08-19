clc
clear
z1=3+4i;
z2=5+2i;
theta=(60/180)*pi;
z3=2*exp(i*theta);
z4=3+6i;
z5=1+2i;
disp('Z in rectangular form is')
Zrect=(z1*z2*z3)/(z4+z5);
Zrect
Zmag=abs(Zrect) %magnitude of Zrect
Zangle=angle(Zrect)*(180/pi) %Angle of Zrect in degrees
disp('complex no. Z in polar form(magnitude,phase)');
Zpolar=[Zmag,Zangle]
diary