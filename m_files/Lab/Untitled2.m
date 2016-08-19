clc
clear
v=[5 17 -3 8 0 -7 12 15 20 -6 6 4 -7 16];
for i=1:14
if v(1,i)>0
    if rem(v(1,i),3)=0
        if rem(v(1,i),5)=0
            v(1,i)=2*v(1,i);
        end
    end
end
end