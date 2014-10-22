my_map f [] = []
my_map f (e:l) = [f(e)] ++ (my_map f l)
