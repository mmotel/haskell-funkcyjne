--a)
reverse1 [] = []
reverse1 (e:l) = (reverse1 l)++[e]

--b)
palindrom l = (l == (reverse1 l))
