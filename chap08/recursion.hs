dividedBy :: Integral a => a -> a -> (a, a)
dividedBy num denom = go num denom 0
  where go n d count
          | n < d = (count, n)
          | otherwise = go (n - d) d (count + 1)

-- 1. write out the steps for reducing dividedBy 15 2
--
-- dividedBy 15 2
-- = go 15 2 0
-- = go (15 - 2) 2 (0 + 1)
-- = go (13 - 2) 2 (1 + 1)
-- = go (11 - 2) 2 (2 + 1)
-- = go (9 - 2) 2 (3 + 1)
-- = ...
-- = go (3 - 2) 2 (6 + 1)   -- 1 < 2
-- = (7, 1)

-- 2. Write a function that recursively sums all numbers from 1 to n.
recursiveSum :: (Eq a, Num a) => a -> a
recursiveSum n = go n 0
  where go n acc
          | n == 0 = acc
          | otherwise = go (n-1) (acc+n)

-- 3. Write a function that multiplies two integral numbers using 
--    recursive summation
multTwo :: (Integral a) => a -> a -> a
multTwo x y = go x 0
  where go n acc
          | n == 0 = acc
          | otherwise = go (n-1) (acc+y)

-- Fix dividedBy
data DividedResult = Result Integer | DividedByZero
  deriving (Show)

dividedBy' :: Integral a => a -> a -> DividedResult
dividedBy' num denom
  | denom == 0 = DividedByZero
  | otherwise = go (abs num) (abs denom) 0
      where go n d count
              | n < d = Result (sig num denom * count)
              | otherwise = go (n - d) d (count + 1)
            sig n d
              | num < 0 && denom < 0 = 1
              | num > 0 && denom > 0 = 1
              | otherwise = -1

