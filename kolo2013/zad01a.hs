member x [] = False
member x (e:l) = (x==e) || (member x l)

--c)
member2 x l = foldl (||) False (map (\e -> (e==x)) l)
