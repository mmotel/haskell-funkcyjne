insert e f [] = [e]
insert e f (x:l) = 
  if (f e x) then [e,x] ++ l 
  else [x] ++ (insert e f l)
   
insertionsort [] f = []
insertionsort (e:l) f = insert e f (insertionsort l f) 
