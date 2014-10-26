my_odd n = if n == 0 then False else (not (my_odd (n-1)))

my_even n = if n == 0 then True else (not (my_even (n-1)))
