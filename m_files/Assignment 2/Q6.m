clc
clear
n=20;
mtp=1;
for i=1:n
    sum=0;
    for j=1:i
        sum=sum+j^3;
    end
    mtp=mtp*sum;
end
mtp
