let hot () : string = 
  if (Random.int(100) mod 2) = 0 then "head" else "tail"
;;