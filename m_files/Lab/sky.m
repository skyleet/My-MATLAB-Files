a=[3 9 1;4 8 6;8 2 0];
for j=1:3
    for i=1:2
        for k= i+1:3
            if a(i,j)<a(k,j)
                temp=a(i,j);
                a(i,j)=a(k,j);
                a(k,j)=temp;
            end
        end
    end
end
save
exit