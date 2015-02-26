--a)
quickSort [] = []
quickSort [x] = [x]
quickSort (x:l) = (quickSort lessers) ++ [x] ++ (quickSort graters)
  where
    lessers = [y | y <- l, y < x ]
    graters = [y | y <- l, y > x ]

--b)

dc test end divide combine p =
  if (test p)
  then (end p)
  else combine (map (dc test end divide combine) (divide p))

split [] = []
split (x:l) = [ [a | a <-l, a < x], [a | a <- l, a > x] ++ [x] ]
flatten [l1, l2] = l1++l2
quickSort2 l = dc (\x -> (length x) <= 1) (\x -> x) split flatten l

--c) modyfikujemy split

split2 [] = []
split2 (x:l) = [ [a | a <-l, a < x], [a | a <- l, a >= x] ++ [x] ]

-- dajemy a >= x zamiast a > x
