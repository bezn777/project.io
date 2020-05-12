function indices = saddle(M)
[r, c] = size(M);
indices_matrix = [];
x= 1;
for i = 1:r
   for j = 1:c
     if (M(i,j) == max(M(i,:))) && (M(i,j) == min(M(:,j)))
         indices_matrix(x,[1,2]) = [i,j];
         x = x+1;
     end
   end
end
indices = indices_matrix;