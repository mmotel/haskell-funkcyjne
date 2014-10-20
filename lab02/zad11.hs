
-- a)
append l m = l ++ m

-- b)
member x [] = False

member x (y:l) = (x==y) || (member x l)

-- c)
my_reverse [] = []
my_reverse (y:l) = (my_reverse l) ++ [y]

-- d)
myLast [] = []
myLast (x:l) = if (myLast l == []) then [x] else (myLast l)

-- e)
delete x [] = []
delete x l = --if (x == y) then l else [y]++(delete x l)
  [ z | z <- l, z /= x ]
