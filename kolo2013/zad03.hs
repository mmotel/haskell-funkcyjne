data Tree a = Leaf a | Node a (Tree a) (Tree a)

foldTree g f (Leaf x) = (g x)
foldTree g f (Node x l p) = f x (foldTree g f l) (foldTree g f p)

inTree = foldTree (\x -> [x]) (\x l p -> [x] ++ l ++ p)

t = (Node 1 (Leaf 2) (Node 3 (Leaf 4) (Leaf 5)))
tl = (Node [1,2,3] (Leaf [2,4,5]) (Node [3] (Leaf [4]) (Leaf [2,5])))

--a)
treeTimes5 (Leaf x) = Leaf (x*5)
treeTimes5 (Node x l p) = Node (x*5) (treeTimes5 l) (treeTimes5 p)

-- Tree a -> Tree a
-- a/Int => Tree Int -> Tree Int

--b)
mapTree f (Leaf x) = Leaf (f x)
mapTree f (Node x l p) = Node (f x) (mapTree f l) (mapTree f p)

-- (a -> b) -> Tree a -> Tree b
-- a/Int => (Int -> b) -> Tree Int -> Tree b

--c)
treeElim2 (Leaf a) = Leaf ([ x | x <- a, x /= 2 ])
treeElim2 (Node a l p) = Node ([ x | x <- a, x /= 2 ])
  (treeElim2 l) (treeElim2 p)

-- Tree [a] -> Tree [a]
-- a/Int => Tree [Int] -> Tree [Int]
