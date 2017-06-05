-- 1. Custom version of zip.
myZip :: [a] -> [b] -> [(a, b)]
myZip x y = go x y []
  where go xs [] acc = reverse acc
        go [] xs acc = reverse acc
        go (x:xs) (y:ys) acc = go xs ys ((x, y) : acc)

-- 2. Custom version of zipWith.
myZipWith :: (a -> b -> c) -> [a] -> [b] -> [c]
myZipWith = undefined

-- 3. Rewrite 1st with 2nd
myZip' :: [a] -> [b] -> [(a, b)]
myZip' = undefined

