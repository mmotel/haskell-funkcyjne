data Tree a = Leaf a | Node (Tree a) a (Tree a)

foldTree g f (Leaf x) = (g x)
foldTree g f (Node l x p) = f (foldTree g f l) x (foldTree g f p)

preTree = foldTree (\x -> [x]) (\l x p -> [x] ++ l ++ p)

t1 = (Node (Leaf 2) 1 (Node (Leaf 4) 3 (Leaf 5)))

--a)
leaves (Leaf a) = [a]
leaves (Node l a p) = (leaves l)++(leaves p)

--b)
countTree x (Leaf a) = if(x==a) then 1 else 0
countTree x (Node l a p) = if(x==a) then 1+(countTree x l)+(countTree x p)
  else (countTree x l)+(countTree x p)

--c)
mapTree f (Leaf a) = Leaf (f a)
mapTree f (Node l a p) = Node (mapTree f l) (f a) (mapTree f p)
