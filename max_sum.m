function [summa, index] = max_sum(v,n)
summa = 0;
index = 0;
s = 0;

if n>length(v)
    summa = 0;
    index = -1;
    return
end
for i = 1:(length(v)-n+1)
    if i == 1
        summa  = sum(v(1:n));
        index = 1;
    end
    if summa < sum(v(i:n))
        summa = sum(v(i:n));
        index = i;
    end
    if n< length(v)
        n = n +1;
    end
end  