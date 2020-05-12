function summa = halfsum(A)
summa = 0;
[row, col] = size(A);
for r  = 1:row
    for c = 1:col
        if r == c
            summa = summa + A(r,c);
        elseif r<c
            summa = summa + A(r,c);
        end
    
    end
end

      