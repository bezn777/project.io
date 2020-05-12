function [valid] = valid_date(year,month,day)
if ~isscalar(year) || ~isscalar(month) || ~isscalar(day)
    valid = false;
    return
end
 if rem(year,4) == 0  && rem(year,100) == 0 && rem(year,400) == 0
    if  month == 2 && day<=29 && day>0
    valid = true;
    elseif  (month == 4 || month == 6 || month == 9 || month == 11) && day<31 && day>0
    valid = true;
    elseif (month == 1 || month == 3 || month == 5|| month == 7 || month == 8 || month == 10 || month == 12) && day<=31 && day>0
    valid = true;
    else
       valid = false;
    end
 end
 if rem(year,4) == 0 && rem(year,100) ~= 0 
    if  month == 2 && day<=29 && day>0
    valid = true;
   elseif  (month == 4 || month == 6 || month == 9 || month == 11) && day<31 && day>0
    valid = true;
   elseif (month == 1 || month == 3 || month == 5|| month == 7 || month == 8 || month == 10 || month == 12) && day<=31 && day>0
    valid = true;
    else
       valid = false;
    end
 end
  if(rem(year,100) == 0 && rem(year,400) ~= 0 && rem(year,4) == 0 )
    if  month == 2 && day<29 && day>0
    valid = true;
   elseif  (month == 4 || month == 6 || month == 9 || month == 11) && day<31 && day>0 
    valid = true;
   elseif (month == 1 || month == 3 || month == 5|| month == 7 || month == 8 || month == 10 || month == 12) && day<=31 && day>0
    valid = true;
    else
       valid = false;
    end
  end
 if(rem(year,100) ~= 0 && rem(year,400) ~= 0 && rem(year,4) ~= 0)
   if  month == 2 && day<29 && day>0
        valid = true;
   elseif (month == 4 || month == 6 || month == 9 || month == 11) && day<31 && day>0
        valid = true;
   elseif (month == 1 || month == 3 || month == 5|| month == 7 || month == 8 || month == 10 || month == 12) && day<=31 && day>0
        valid = true;
    else
       valid = false;
   end
 end