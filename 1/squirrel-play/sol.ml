type season = Spring | Summer | Autumn | Winter


let squirrel_play (t:int) (s:season) =
    if t >= 15 then
        if t <= 35 then
            if s = Summer || t <= 30 then
                true
            else false
        else false
    else false
;;

assert(squirrel_play 18 Winter = true);;
assert(squirrel_play 32 Spring = false);;
assert(squirrel_play 32 Summer = true);;