data BoolExpr = Value Bool |
  And BoolExpr BoolExpr | Not BoolExpr

be1 = (And (Value True) (Not (Value False)))
be2 = (And (Value False) (Not (Value False)))

--a)
eval (Value a) = a
eval (And a b) = (eval a) && (eval b)
eval (Not a) = not (eval a)


--b)
foldBoolExpr f g h (Value a) = (f a)
foldBoolExpr f g h (And a b) = g (foldBoolExpr f g h a) (foldBoolExpr f g h b)
foldBoolExpr f g h (Not a) = h (foldBoolExpr f g h a)

-- (Bool -> t) -> (t -> t -> t) -> (t -> t) -> BoolExpr -> t

--c) ?
