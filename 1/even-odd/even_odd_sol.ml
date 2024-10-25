let is_even n = (n mod 2 = 0);;

let check num = (num>0 && num<6)

let win a b = if not(check a) && not(check b) then 0
else if (not(check a) || not(check b)) then 
  (if (check a) then 1 else -1)
else if (is_even (a + b)) then 1 else -1;;