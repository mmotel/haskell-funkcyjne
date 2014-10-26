nwd x 0 = x
nwd x y = if y>=x then nwd x (y-x) else nwd (x-y) y
