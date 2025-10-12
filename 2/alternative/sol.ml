let ( <|> ) a b =
  match (a, b) with
  | (None, None) -> None
  | (None, Some value) -> Some value
  | (Some value, _) -> Some value
;;

assert (None <|> Some false = Some false);;
assert (Some true <|> None <|> Some false = Some true);;
assert (Some 3 <|> None = Some 3);;
assert (Some "cat" <|> Some "dog" = Some "cat");;
assert (None <|> None <|> Some "dog" <|> None = Some "dog");;