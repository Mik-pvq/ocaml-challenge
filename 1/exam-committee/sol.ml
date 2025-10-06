type vote = StrongReject | WeakReject | WeakAccept | StrongAccept

let decide_exam (a:vote) (b:vote) (c:vote) = 
  match (a, b, c) with 
    (StrongReject, _, _) -> false
  | (_, StrongReject, _) -> false
  | (_, _, StrongReject) -> false
  | (WeakReject, WeakReject, _) -> false
  | (_, WeakReject, WeakReject) -> false
  | (WeakReject, _, WeakReject) -> false
  | (_, _, _) -> true
;;

assert(decide_exam StrongReject StrongReject StrongReject = false);;
assert(decide_exam WeakReject StrongReject StrongReject = false);;
assert(decide_exam WeakAccept StrongReject StrongReject = false);;
assert(decide_exam StrongAccept StrongReject StrongReject = false);;
assert(decide_exam StrongReject WeakReject StrongReject = false);;
assert(decide_exam WeakReject WeakReject StrongReject = false);;
assert(decide_exam WeakAccept WeakReject StrongReject = false);;
assert(decide_exam StrongAccept WeakReject StrongReject = false);;
assert(decide_exam StrongReject WeakAccept StrongReject = false);;
assert(decide_exam WeakReject WeakAccept StrongReject = false);;
assert(decide_exam WeakAccept WeakAccept StrongReject = false);;
assert(decide_exam StrongAccept WeakAccept StrongReject = false);;
assert(decide_exam StrongReject StrongAccept StrongReject = false);;
assert(decide_exam WeakReject StrongAccept StrongReject = false);;
assert(decide_exam WeakAccept StrongAccept StrongReject = false);;
assert(decide_exam StrongAccept StrongAccept StrongReject = false);;

assert(decide_exam StrongReject StrongReject WeakReject = false);;
assert(decide_exam WeakReject StrongReject WeakReject = false);;
assert(decide_exam WeakAccept StrongReject WeakReject = false);;
assert(decide_exam StrongAccept StrongReject WeakReject = false);;
assert(decide_exam StrongReject WeakReject WeakReject = false);;
assert(decide_exam WeakReject WeakReject WeakReject = false);;
assert(decide_exam WeakAccept WeakReject WeakReject = false);;
assert(decide_exam StrongAccept WeakReject WeakReject = false);;
assert(decide_exam StrongReject WeakAccept WeakReject = false);;
assert(decide_exam WeakReject WeakAccept WeakReject = false);;
assert(decide_exam WeakAccept WeakAccept WeakReject = true);;
assert(decide_exam StrongAccept WeakAccept WeakReject = true);;
assert(decide_exam StrongReject StrongAccept WeakReject = false);;
assert(decide_exam WeakReject StrongAccept WeakReject = false);;
assert(decide_exam WeakAccept StrongAccept WeakReject = true);;
assert(decide_exam StrongAccept StrongAccept WeakReject = true);;

assert(decide_exam StrongReject StrongReject WeakAccept = false);;
assert(decide_exam WeakReject StrongReject WeakAccept = false);;
assert(decide_exam WeakAccept StrongReject WeakAccept = false);;
assert(decide_exam StrongAccept StrongReject WeakAccept = false);;
assert(decide_exam StrongReject WeakReject WeakAccept = false);;
assert(decide_exam WeakReject WeakReject WeakAccept = false);;
assert(decide_exam WeakAccept WeakReject WeakAccept = true);;
assert(decide_exam StrongAccept WeakReject WeakAccept = true);;
assert(decide_exam StrongReject WeakAccept WeakAccept = false);;
assert(decide_exam WeakReject WeakAccept WeakAccept = true);;
assert(decide_exam WeakAccept WeakAccept WeakAccept = true);;
assert(decide_exam StrongAccept WeakAccept WeakAccept = true);;
assert(decide_exam StrongReject StrongAccept WeakAccept = false);;
assert(decide_exam WeakReject StrongAccept WeakAccept = true);;
assert(decide_exam WeakAccept StrongAccept WeakAccept = true);;
assert(decide_exam StrongAccept StrongAccept WeakAccept = true);;

assert(decide_exam StrongReject StrongReject StrongAccept = false);;
assert(decide_exam WeakReject StrongReject StrongAccept = false);;
assert(decide_exam WeakAccept StrongReject StrongAccept = false);;
assert(decide_exam StrongAccept StrongReject StrongAccept = false);;
assert(decide_exam StrongReject WeakReject StrongAccept = false);;
assert(decide_exam WeakReject WeakReject StrongAccept = false);;
assert(decide_exam WeakAccept WeakReject StrongAccept = true);;
assert(decide_exam StrongAccept WeakReject StrongAccept = true);;
assert(decide_exam StrongReject WeakAccept StrongAccept = false);;
assert(decide_exam WeakReject WeakAccept StrongAccept = true);;
assert(decide_exam WeakAccept WeakAccept StrongAccept = true);;
assert(decide_exam StrongAccept WeakAccept StrongAccept = true);;
assert(decide_exam StrongReject StrongAccept StrongAccept = false);;
assert(decide_exam WeakReject StrongAccept StrongAccept = true);;
assert(decide_exam WeakAccept StrongAccept StrongAccept = true);;
assert(decide_exam StrongAccept StrongAccept StrongAccept = true);;