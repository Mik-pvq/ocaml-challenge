let f1 n = n>4;;

let f2 p = if p then 3 else 4;;

let f3 n = (n, n>3);;

let f4 (n, v) = if v then n else 0;;

let f5 a b= a+b ;;

let f6 a b = a = 2 && b = 4;;

let f7 p n = if p then 4 else if n = 4 then 5 else 0;;

let f8 p q = if p then 0 else if q then 2 else 6;;

let f9 p n = if p then n else 0;;

let f10 f = if f 3 = 4 then 1 else 0;;

let f11 f = if f 5 then 1 else 0;;

let f12 p = if p true = 1 then 1 else 0;;

let f13 p = if p 3 then true else false;; 

let f14 p = if p true then 1 else 0;;

let f15 n (a, b) = match (a, b) with
  | (0, 0) -> -1 
  | _ -> n 
;;

let fprova15 n x = if n <3 then (fst x) + n else (snd x) + n;;

let f16 a b c = a + b + c;; 

let fprova16 = fun x -> fun y -> fun z -> x + y + z;;

let f17 f = if f 4 = 3 then f else f;;

let f18 f = if f (fun x -> x+0) = 0 then 1 else 0;; (*f (f: int -> int) : int*)

let fprova18 f = if f (fun x -> x+1) = 7 then 1 else 0;;

let f19 f = if f 1 = 0 then (not) else (not);;

let f20 f = if f 1 then fun true -> 1 else fun false -> 1;;