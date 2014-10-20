hanoi n a b c =
  if n > 0 then
    (hanoi (n-1) a c b)++
    [(a,c)]++
    (hanoi (n-1) b a c)
  else []
