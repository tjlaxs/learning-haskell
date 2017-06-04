-- implement custom enumFromTos without range syntax

eftBool :: Bool -> Bool -> [Bool]
eftBool x y = go x y []
  where go n m acc
          | n > m = []
          | n == m = reverse (n : acc)
          | otherwise = go (succ n) m (n : acc)

eftOrd :: Ordering -> Ordering -> [Ordering]
eftOrd x y = go x y []
  where go n m acc
          | n > m = []
          | n == m = reverse (n : acc)
          | otherwise = go (succ n) m (n : acc)

-- I'm pretty sure this was not the point of the exercise
-- as I will logically result in the same solution for all 4 cases

go n m acc
          | n > m = []
          | n == m = reverse (n : acc)
          | otherwise = go (succ n) m (n : acc)

eftInt :: Int -> Int -> [Int]
eftInt x y = go x y []

eftChar :: Char -> Char -> String
eftChar x y = go x y []

