--a)
delete x [] = []
delete x (y:l) = if (x == y) then (delete x l)
  else [y]++(delete x l)

--b)
mapList f [] = []
mapList f (x:l) = [(f x)]++(mapList f l)

--c)
delete2 x l = foldl (++) []
  (map (\e -> if (x == e) then [] else [e]) l)

--d)
-- delete :: a -> [a] -> [a]
-- mapList :: (a -> b) -> [a] -> [b]
