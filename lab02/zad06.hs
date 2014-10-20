nwd x 0 = x
nwd x y = if x > y then nwd (x-y) y else nwd x (y-x)

nww x y = (x * y) / nwd x y
