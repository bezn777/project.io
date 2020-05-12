function charnum = char_counter(fname,character)
open = fopen(fname,'r');
if open < 0 || ischar(character) == 0
    charnum = -1
    return 
end
read = fscanf(open,'%c');
charnum = count(read,character);