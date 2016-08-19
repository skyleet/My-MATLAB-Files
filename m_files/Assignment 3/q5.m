clc
clear
sum=0;
for k=1:20
    sum=sum+((((-1)^k)*k)/2^k);
end
fprintf('sum of the series is %4.5f',sum)