myelem p [] = False
myelem p (x:xs) = if p == x
    then True
    else elem p xs
