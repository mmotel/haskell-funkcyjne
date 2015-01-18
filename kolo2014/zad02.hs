--a)
filter1 p [] = []
filter1 p (e:l) = if (p e) then [e]++(filter1 p l)
  else (filter1 p l)

--b)
filter2 p l = [x | x <- l, (p x)]

--c)
filter3 p l = foldl (++) [] (map (\e -> if (p e) then [e] else []) l)

--d)

filter :: (a -> Bool) -> [a] -> [a]
