let nand1 a b = not(a && b);;

let nand2 a b = if a then
    (if b then false else true)
else false;;

let nand3 a b = match (a, b) with
(true, true) -> false
| _ -> true;;
