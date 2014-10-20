fib 0 = 0
fib 1 = 1
fib n = fib (n-1) + fib (n-2)

fib_a n = fib2 n 1 1 1

fib2 n l sl sp =
  if n == 0 then 0
  else if n == 1 then 1
  else if n == 2 then 1
  else if n == (l + 2) then (sl + sp)
  else fib2 n (l+1) (sl+sp) sl
