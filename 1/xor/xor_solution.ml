let xor1 a b = not (a && b) || (not a && not b);;

let xor2 a b = if a = b then false else true;;

let xor3 a b = match (a, b) with
(true, false) -> true
| (false, true) -> true
| _ -> false;;
