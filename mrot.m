function y = mrot(M,x)
W=size(M,2);
for i=1:W
    M(:,i+W,:) = M(:,i,:);
end
    M = M(:,x+1:x+W,:);
    y = M;
end