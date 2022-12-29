splitList :: Num a => [a] -> ([a],[a])
splitList [] = ([],[])
splitList [x] = ([x],[])
splitList (x:y:zs) = let 
       (x1,x2) = splitList zs
        in (x:x1,y:x2)         