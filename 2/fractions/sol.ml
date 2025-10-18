let is_posfrac (a,b) = 
  if b=0 then failwith "denominator=0" 
  else 
    if a*b>=0 then true else false;;

let compare_posfrac (a,b) (c,d) = 
  if is_posfrac (a,b) || is_posfrac (c,d) then 
    if a*d=b*c then 0
    else if a*d>b*c then 1
      else -1
  else failwith "Fails"
;;

assert (compare_posfrac (1,2) (2,4) == 0);;
assert (compare_posfrac (1,2) (1,3) == 1);;
assert (compare_posfrac (1,2) (2,3) == -1);;


let compare_frac (a,b) (c,d) = 
  match (is_posfrac (a,b), is_posfrac (c,d)) with
  | (true, true) -> compare_posfrac (a,b) (c,d)
  | (false, true) -> -1
  | (true, false) -> 1
  | _ -> if (-a*d)>(-b*c) then 1
      else -1
;;

assert (compare_frac (1,2) (2,4) == 0);;
assert (compare_frac (1,(-2)) (1,3) == -1);;
assert (compare_frac (1,2) ((-2),3) == 1);;
assert (compare_frac (1,2) ((-2),(-4)) == 0);;
assert (compare_frac ((-1),2) (1,(-3)) == -1);;
assert (compare_frac (1,(-2)) ((-2),3) == 1);;