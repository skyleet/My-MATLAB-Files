function y = rotate(M,x)
W=size(M,2);
H=size(M,1);
%fprintf('%1.0f %1.0f %1.0f\n',x,W,H);
%fprintf('%s',M);

for i=x:W-1
    M(1:H,i+1) = M(1:H,i);
end
y = M;
end