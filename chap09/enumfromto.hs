-- implement custom enumFromTos without range syntax

eftBool :: Bool -> Bool -> [Bool]
eftBool x y = go x y [x]        -- I don't like this [x]
  where go n m acc
          | n == m = reverse acc
          | n > m = []          -- this is ugly
          | otherwise = go (succ n) m (succ n : acc)

eftOrd :: Ordering -> Ordering -> [Ordering]
eftOrd = undefined

eftInt :: Int -> Int -> [Int]
eftInt = undefined

eftChar :: Char -> Char -> [Char]
eftChar = undefined
