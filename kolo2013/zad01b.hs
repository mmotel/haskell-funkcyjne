flatten [] = []
flatten (e:l) = e ++ (flatten l)

--c)
flatten2 = foldl (++) []
