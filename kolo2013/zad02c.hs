smaller_zero3 l = foldl (++) []
  (map (\e -> if(e<0) then [e] else [] ) l) 
