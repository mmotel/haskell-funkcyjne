split [] = ([],[])
split [x] = ([x],[])
split (x:y:l) = (x:l1,y:l2) where (l1,l2) = split l

merge l1 [] f = l1
merge [] l2 f = l2
merge f (x:l1) (y:l2) =
  if (f x y) then [x] ++ (merge f l1 (y:l2))
  else [y] ++ (merge f (x:l1) l2)

mergesort f [] = []
mergesort f [x] = [x]
mergesort f (x:l) =
  merge f (mergesort f l1) (mergesort f l2) where (l1, l2) = split (x:l)
