type card = Joker | Val of int;;

let check (c:card) =
  if c = Joker then true
  else 
    if c < Val 1 || c > Val 10 then false else true
;;

let win (p:card) (d:card) : bool = 
  if not (check p && check d) then failwith("Value not accepted")
  else 
    match (p, d) with
    | (_, Joker) -> false
    | (Joker, _) -> true
    | (_, _) -> p > d
;;

assert(win Joker (Val 7) = true);;
assert(win (Val 7) Joker = false);;
assert(win Joker Joker = false);;
assert(win (Val 9) (Val 7) = true);;
assert(win (Val 7) (Val 7) = false);;