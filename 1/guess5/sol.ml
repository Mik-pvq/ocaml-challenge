let guess5 n =
  if n < 1 || n > 5 then failwith("wrong input")
  else let r = Random.int(5)+1 in 
    (r=n, r)
;;

let guess52 = function
  | x when x < 1 || x > 5 -> failwith "fail"
  | x -> let rnd = Random.int(5)+1 in (x=rnd,rnd)
;;

let test tot = 
  let rec test_rec n tot w =
    if n = 0 then 
      string_of_float (100. *. (float_of_int w /. float_of_int tot)) ^ "%" 
    else
      test_rec (n-1) tot (w + if ( (guess5 (Random.int(5)+1)) |> (fun (x,y) -> x) ) then 1 else 0)
  in
  test_rec tot tot 0;;

test 100000;;