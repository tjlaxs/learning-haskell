-- 1. myOr returns True if any Bool in the list is True
myOr :: [Bool] -> Bool
myOr [] = False
myOr (x:xs) = x || myOr xs

-- 2. myAny returns True if a -> Bool applied to any of the values
--    in the list returns True.
myAny :: (a -> Bool) -> [a] -> Bool
myAny _ [] = False
myAny f (x:xs) = f x || myAny f xs

-- 3. myElem with recursion and myElem with myAny
myElem :: Eq a => a -> [a] -> Bool
myElem _ [] = False
myElem e (x:xs) = (x == e) || myElem e xs

myElem' :: Eq a => a -> [a] -> Bool
myElem' e = myAny (== e)

-- 4. myReverse
myReverse :: [a] -> [a]
myReverse s = go s []
  where go [] acc = acc
        go (x:xs) acc = go xs (x : acc)

-- 5. squish flattens a list of lists into a list
squish :: [[a]] -> [a]
squish [] = []
squish l = go l []
  where go [] acc = reverse acc
        go (l:ls) acc = go ls (go2 l acc)
          where go2 [] acc = acc
                go2 (x:xs) acc = go2 xs (x : acc)

-- 6. squishMap maps a function over a list and concatenates the results
squishMap :: (a -> [b]) -> [a] -> [b]
squishMap f l = go l []
  where go [] acc = reverse acc
        go (l:ls) acc = go ls (go2 (f l) acc)
          where go2 [] acc = acc
                go2 (x:xs) acc = go2 xs (x : acc)

-- 7. squishAgain flattens a list of lists into a list (use squishMap)
squishAgain :: [[a]] -> [a]
squishAgain = squishMap (\x -> x)

-- 8. myMaximumBy takes a comparison function and a list and returns greatest
--    element of the list based on the last value that the comparison returned
--    GT for
myMaximumBy :: (a -> a -> Ordering) -> [a] -> a
myMaximumBy f (x:xs) = go xs x
  where go [] m = m
        go (x:xs) m = if f m x == GT then go xs m else go xs x

-- 9. myMinimumBy returns similarly last value that returned LT for
myMinimumBy :: (a -> a -> Ordering) -> [a] -> a
myMinimumBy f (x:xs) = go xs x
  where go [] m = m
        go (x:xs) m = if f m x == LT then go xs m else go xs x

-- 10. Using myMaximumBy and myMinimumBy write maximum and minimum
myMaximum :: (Ord a) => [a] -> a
myMaximum = myMaximumBy compare

myMinimum :: (Ord a) => [a] -> a
myMinimum = myMinimumBy compare

