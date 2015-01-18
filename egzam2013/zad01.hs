--a)
last1 [e] = e
last1 (e:l) = if (l == []) then e else (last1 l)

--b)
reverse1 [] = []
reverse1 (e:l) = (reverse1 l)++[e]
