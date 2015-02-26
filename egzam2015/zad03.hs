data Tree a b = Nil | Leaf a | Node a b (Tree a b) (Tree a b)

t = Node 1 2 (Leaf 3) (Node 3 4 (Nil) (Leaf 5))

--a)
sumTree (Nil) = 0
sumTree (Leaf a) = a
sumTree (Node a b l p) = a + (sumTree l) + (sumTree p)

--b)
leafs (Nil) = 0
leafs (Leaf a) = 1
leafs (Node a b l p) = (leafs l) + (leafs p)

--c)
mapTree f (Nil) = Nil
mapTree f (Leaf a) = (Leaf a)
mapTree f (Node a b l p) = (Node a (f b) (mapTree f l) (mapTree f p) )

inTree (Nil) = []
inTree (Leaf a) = [a]
inTree (Node a b l p) = (inTree l) ++ [a,b] ++ (inTree p)
