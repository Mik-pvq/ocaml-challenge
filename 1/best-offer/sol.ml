
let best_of_two (a:int option) (b:int option) : int option =
  if a = None && b = None then None
  else 
    if a > b then a
    else b
;;
let best_offer (a:int option) (b:int option) (c:int option) : int option=
  if a=None && b=None && c=None then None
  else best_of_two (best_of_two a b) c
;;

assert(best_offer (Some 1) (Some 2) (Some 3) = Some 3);;
assert(best_offer (Some 5) (Some 2) (Some 3) = Some 5);;
assert(best_offer (Some 1) (Some 5) (Some 3) = Some 5);;
assert(best_offer None (Some 2) (Some 3) = Some 3);;
assert(best_offer (Some 1) None (Some 3) = Some 3);;
assert(best_offer (Some 1) (Some 2) None = Some 2);;
assert(best_offer None None (Some 2) = Some 2);;
assert(best_offer None (Some 2) None = Some 2);;
assert(best_offer (Some 1) None None = Some 1);;
assert(best_offer None None None = None);;