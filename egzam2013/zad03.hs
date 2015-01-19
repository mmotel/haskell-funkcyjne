data BoolExpr = Value Bool |
  And BoolExpr BoolExpr | Not BoolExpr

be1 = (And (Value True) (Not (Value False)))
be2 = (And (Value False) (Not (Value False)))

--a)
eval (Value a) = a
eval (And a b) = (eval a) && (eval b)
eval (Not a) = not (eval a)


--b)
foldBoolExpr l = foldl (\e x -> And e x) (Value True) l
-- foldBoolExpr :: [BoolExpr] -> BoolExpr

FoldBoolExpr f g h (Value a) = (f a)
FoldBoolExpr f g h (And a b) = g (FoldBoolExpr f g h a) (FoldBoolExpr f g h b) 
FoldBoolExpr f g h (Not a) = h (FoldBoolExpr a)

--c) ?
