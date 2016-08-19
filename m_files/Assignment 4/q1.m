clc
clear
i = 1;
sum = 0;
while i <= 9
        sum = sum + i;
        i = i + 2;
end
fprintf('Sum of odd integers from 1 to 9 is = %4.1f',sum)