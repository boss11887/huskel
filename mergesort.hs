merge xs [] = xs
merge [] ys = ys
merge (x:xs) (y:ys)
    | x < y     = x:merge (xs) (y:ys)
    | otherwise = y:merge (x:xs) (ys)

splitList :: Num a => [a] -> ([a],[a])
splitList [] = ([],[])
splitList [x] = ([x],[])
splitList (x:y:zs) = let 
       (x1,x2) = splitList zs
        in (x:x1,y:x2)         


mergeSort [] = []
mergeSort [a] = [a]
mergeSort a = let (i,j) = splitList a
    in merge (mergeSort i) (mergeSort j)