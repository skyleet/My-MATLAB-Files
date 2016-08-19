function [m,p]=sk(x)
m=mean(x);
p=1;
for i=1:length(x)
    p=p*x(1,i);
end
end