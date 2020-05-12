function distance = get_distance(X,Y)
[~,~,D] = xlsread('Distances.xlsx');
for j  = 2:(size(D,2)+1)
   if j> size(D,2)
          distance=-1;
          return
   end
    if strcmp(D{1,j}, X);
          break
    end
end
for i = 2:(size(D,1)+1)
    if i >size(D,1)
         distance=-1;
         return 
    end
   if strcmp(D{i,1}, Y)
       distance = D{i,j};
          break
   end
end
