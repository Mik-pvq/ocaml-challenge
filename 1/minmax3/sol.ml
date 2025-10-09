let minmax3 a b c =
  (min a (min b c), max a (max b c))
;;

assert(minmax3 1 2 3 = (1,3));;
assert(minmax3 1 3 2 = (1,3));;
assert(minmax3 2 1 3 = (1,3));;
assert(minmax3 2 3 1 = (1,3));;
assert(minmax3 3 2 1 = (1,3));;
assert(minmax3 3 1 2 = (1,3));;