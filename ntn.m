V=230;
Ws = 3000;
Wr = 0:10:3000;
Rs=0.2;
Xs=0.5;
Rr=0.4;
Xr=0.5;
s=(Ws-Wr)./Ws;
a=Rs+(Rr./s);
b=Xs+Xr;
T=(3*V*V*(Rr./s))./(Ws*(a.*a+b*b));
I= V./sqrt(a.*a+b*b);
plot(T,Wr);
hold on;
plot(I/12,Wr);
xlabel('Torque(blue) and Current(red).');
ylabel('Speed of motor');
title('Speed vs Torque & Speed vs Current characterstics of a 3 phase motor.');