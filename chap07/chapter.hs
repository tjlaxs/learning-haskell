-- 1.
tensDigit :: Integral a => a -> a
tensDigit x = d
  where xLast = x `div` 10
        d = xLast `mod` 10

dmTensDigit :: Integral a => a -> a
dmTensDigit x = d
  where (xLast, _) = divMod x 10
        (_, d) = divMod xLast 10

hunsDigit x = d2
  where b = 10
        d = x `div` 100
        d2 = d `mod` b

-- 2.
foldBool :: a -> a -> Bool -> a
foldBool x y z = case z of
  True -> x
  False ->  y

foldBool2 :: a -> a -> Bool -> a
foldBool2 x y z
  | z = x
  | otherwise = y

foldBool3 :: a -> a -> Bool -> a
foldBool3 x y True = x
foldBool3 x y False = y

-- 3.
g :: (a -> b) -> (a, c) -> (b, c)
g f (x, y) = (f x, y)
