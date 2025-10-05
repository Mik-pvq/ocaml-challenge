let seven_eleven_doubles d1 d2 = 
  if ((d1+d2) = 7 || (d1+d2) = 11 || d1=d2) then (true, d1, d2)
  else (false, d1, d2);;
    