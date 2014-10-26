nwd n 0 = n
nwd n m = if m>=n then nwd n (m-n) else nwd (n-m) m

nww n m = div (n*m) (nwd n m)
