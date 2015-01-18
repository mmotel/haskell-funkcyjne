foldl2 f e [] = e
foldl2 f e (x:l) = foldl f (f e x) l
foldr2 f e [] = e
foldr2 f e (x:l) = f x (foldr f e l)
length2 = foldr2 (\x -> (+1)) 0
and2 = foldl2 (&&) True
prod = foldl2 (*) 1
nwd a 0 = a
nwd a b = nwd b (mod a b)
nwd_list (x:l) = foldr2 (\a b -> (nwd a b)) x l
-- delete
map1 f = foldr ((:) . f) []
swap f x y = f y x
reverse2 = foldl (swap(:)) []
filter1 f = foldr (\x l -> if (f x) then (x:l) else l) []
-- forall =?= map
forall f l = foldl
-- flatten [x] = x
-- flatten (x:l) = x ++ (flatten l)
flatten = foldl2 (++) []
map2 f [] [] = []
map2 f (x1:l1) (x2:l2) = [(f x1 x2)] ++ (map2 f l1 l2)
skal l1 l2 = foldl2 (+) 0 (map2 (*) l1 l2)
