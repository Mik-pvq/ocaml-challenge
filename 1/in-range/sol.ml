let in_range (x) (a) (b) : bool =
  if a >= b then failwith("Range not valid")
  else x<=b && x>=a
;;

assert(in_range 1 0 2 = true);;
assert(try in_range 1 2 1 |> fun _ -> false with _ -> true);;
assert(in_range 1 2 3 = false);;
assert(in_range 4 0 2 = false);;