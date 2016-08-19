function [m,s] = stat(x)
n = length(x);
m = sum(x)/n;
s = sqrt((sum(x-m).^2)/(n-1));
end