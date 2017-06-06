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
myElem = undefined

myElem' :: Eq a => a -> [a] -> Bool
myElem' = undefined

-- 4. myReverse
myReverse :: [a] -> [a]
myReverse = undefined

-- 5. squish flattens a list of lists into a list
squish :: [[a]] -> [a]
squish = undefined

-- 6. squishMap maps a function over a list and concatenates the results
squishMap :: (a -> [b]) -> [a] -> [b]
squishMap = undefined

-- 7. squishAgain flattens a list of lists into a list (use squishMap)
squishAgain :: [[a]] -> [a]
squishAgain = undefined

-- 8. myMaximumBy takes a comparison function and a list and returns greatest
--    element of the list based on the last value that the comparison returned
--    GT for
myMaximumBy :: (a -> a -> Ordering) -> [a] -> a
myMaximumBy = undefined

-- 9. myMinimumBy returns similarly last value that returned LT for
myMinimumBy :: (a -> a -> Ordering) -> [a] -> a
myMinimumBy = undefined

-- 10. Using myMaximumBy and myMinimumBy write maximum and minimum
myMaximum :: (Ord a) => [a] -> a
myMaximum = undefined

myMinimum :: (Ord a) => [a] -> a
myMinimum = undefined

