-- rewrite f to use lambda
addOneIfOdd n = case odd n of
  True -> f n
  False -> n
  where f = \n -> n + 1

-- rewrite to use lambda
addFive = \x y -> (if x > y then y else x) + 5

-- rewrite to not use lambda
--mflip f = \x -> \y -> f y x
mflip f x y = f y x
