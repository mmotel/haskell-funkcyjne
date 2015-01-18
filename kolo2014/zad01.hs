--a)
-- set comperhension
delete_all x l = [z | z <- l, z /= x]
-- rekurencyjnie
delete_all2 x [] = []
delete_all2 x (e:l) = if (e /= x) then [e]++(delete_all2 x l)
  else (delete_all2 x l)
