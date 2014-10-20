myFilter p [] = []
myFilter p l = [ z | z <- l, p(z) ]

-- myFilter (\x -> (x > 1)) [1,2,3]
