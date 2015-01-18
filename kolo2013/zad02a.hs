smaller_zero [] = []
smaller_zero (e:l) = if (e<0) then [e] ++ (smaller_zero l) else (smaller_zero l)
