delta a b c = (b*b) - (4*a*c)

kwad a b c =
  if (delta a b c) > 0 then
  [ ((-b - sqrt( delta a b c )) / ( 2 * a )),
   ((-b + sqrt( delta a b c )) / ( 2 * a )) ]
  else if (delta a b c) == 0 then [(-b / (2 * a))]
  else []
