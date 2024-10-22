let mux2_1 s0 a b = s0 && (s0 && a) || not(s0) && (not(s0) && b);;

let mux2_2 s0 a b = if s0 then a else b;;

let mux2_3 s0 a b = match s0 with
  true -> a
  | false -> b;;


let mux4 s1 s0 a b c d = if s0 then 
    mux2_1 s1 d b 
  else mux2_1 s1 c a;;
  