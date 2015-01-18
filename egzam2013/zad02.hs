--a)
map1 f [] = []
map1 f (e:l) = [(f e)]++(map1 f l)

--b)
map2 f l = [ (f x) | x <- l, True ]

--c)
map3 f l = foldl (\e x -> e++[(f x)]) [] l
