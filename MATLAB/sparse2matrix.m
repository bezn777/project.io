function matrix = sparse2matrix(s)
dimension_matrix = s{1};
ori_element = s{2};
r = dimension_matrix(1);
c = dimension_matrix(2);

for i = 1:r
    for j = 1:c
        A(i,j) = ori_element;
    end
end

for i = 3:length(s)
     r_c_i = s{i};
     r = r_c_i(1);
     c = r_c_i(2);
     A(r,c) = r_c_i(3);
end  
r = dimension_matrix(1);
c = dimension_matrix(2);
for i = 1:r
    for j = 1:c
        matrix(i,j) = A(i,j);
    end
end
