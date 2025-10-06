let ret (a : int option) : int = 
  match a with
    None -> 0
  | Some x -> x;;

let incr_opt (a : int option) : int option = 
  match a with 
    None -> None
  | Some n -> Some (n+1)
;;


assert(incr_opt (Some (-1)) = Some 0);;
assert(incr_opt (Some 0) = Some 1);;
assert(incr_opt (Some 1) = Some 2);;
assert(incr_opt (Some (-2)) = Some (-1));;
assert(incr_opt None = None);;