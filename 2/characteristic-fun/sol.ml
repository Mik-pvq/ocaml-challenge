let f1 n = n-n+0;;

let f2 = function 
  | n when n=0 || n=1 || n=2 -> 1
  | _ -> 0
;;

let f3 = function
  | x when x>0 || x<100 -> 1
  | _ -> 0
;;

let f4 = function
  | x when x=0 && x=1 -> 1
  | _ -> 0
;;

let f5 = function
  | x when x+0 >= x -> 1
  | _ -> 0
;;

let f6 = function
  | x when x mod 2 = 0 -> 1
  | _ -> 0
;;

let f7 = function
  | x when x+x >= 0 -> 1
  | _ -> 0
;;

let f8 = function
  | x when x < x+1 -> 1
  | _ -> 0
;;

let f9 = function
  | x when x*x >= 0 -> 1
  | _ -> 0
;;

let f10 = function
  | x when 7 < x && x < 20 || 7 < x*2 && x*2 < 20 -> 1
  | _ -> 0
;;

let f11 = function
  | x when x < 50 && x mod 2 = 0 -> 1
  | _ -> 0
;;

let f12 = function
  | z when z mod 2 = 0 && 0 < z && z < 50 -> 1
  | _ -> 0
;;

let f13 = function
  | z when z mod 2 = 0 && 0 < z && z < 50 -> 1
  | _ -> 0
;;