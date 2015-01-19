--a)
take_while p [] = []
take_while p (e:l) = if (p e) then [e]++(take_while p l) else []

--b) ?
