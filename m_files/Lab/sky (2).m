function y=sky(z)
x=1:1000;
for k=1:z
    y(:,k)=k*log(x);
end
plot(x,y)