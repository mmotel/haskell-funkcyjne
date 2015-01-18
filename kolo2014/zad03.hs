data Tree a = Nil | Node a (Tree a) (Tree a)

foldTree g f Nil = (g Nil)
foldTree g f (Node x l p) = f x (foldTree g f l) (foldTree g f p)

inTree = foldTree (\x -> []) (\x l p -> [x] ++ l ++ p)

t = (Node 1 (Nil) (Node 2 (Nil) (Node 3 (Nil) (Nil)) ))
tl = (Node [1,2,3] (Nil) (Node [3] (Nil) (Node [2,5] (Nil) (Nil)) ))

--a)
tree_size Nil = 0
tree_size (Node x l p) = 1 + (tree_size l) + (tree_size p)


--b)
tree_max t = maximum ( foldTree (\x -> []) (\x l p -> [x]++l++p) t)


--c)

mapTree f Nil = Nil
mapTree f (Node a l p) = Node (f a) (mapTree f l) (mapTree f p)


--d)
length1 [] = 0
length1 (x:l) = 1 + (length1 l)

tree_arr_length Nil = Nil
tree_arr_length (Node x l p) = Node (x++[(length1 x)])
  (tree_arr_length l) (tree_arr_length p)

--e)

--(a) treeSize :: Tree a -> Int

--(b) tree_max :: Tree a -> a

--(c) mapTree :: (a -> b) -> Tree a -> Tree b

--(d) tree_arr_length :: Tree [a] -> Tree [a]
