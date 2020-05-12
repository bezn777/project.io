function [mmr, mmm] = minimax(A)
mmr = A(abs((max(1,1:end)-min(1,1:end)), abs((max(2,1:end)-min(2,1:end)),abs((max(3,1:end)-min(3,1:end)));
mmm = max(A)-min(A);
end
