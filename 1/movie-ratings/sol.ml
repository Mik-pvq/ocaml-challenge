let check rate =
  if rate < 1 || rate > 5 then false
  else true
;;

let movie_rating a b c =
  if not(check a && check b && check c) then failwith("Rating not accepted")
  else
    match (a, b, c) with 
    | (5, 5, 5) -> "Masterpiece"
    | (5, 5, 4) -> "Highly Recommended"
    | (5, 4, 5) -> "Highly Recommended"
    | (4, 5, 5) -> "Highly Recommended"
    | (4, 4, 4) -> "Recommended"
    | (4, 4, 3) -> "Recommended"
    | (4, 3, 4) -> "Recommended"
    | (3, 4, 4) -> "Recommended"
    | (_, _, _) -> "Mixed Reviews"
;;

assert(movie_rating 1 1 1 = "Mixed Reviews");;
assert(movie_rating 4 4 3 = "Recommended");;
assert(movie_rating 4 4 4 = "Recommended");;
assert(movie_rating 5 5 4 = "Highly Recommended");;
assert(movie_rating 5 5 5 = "Masterpiece");;