module Chapter09 where

import Data.Char
-- Data.Char
--
-- 2. Write function to filter all lower case latters (using isUpper from
--    Data.Char module.)
stripLower :: String -> String
stripLower = filter isUpper

-- 3. Write function to capitalize first letter of a string.
capitalizeFirst :: String -> String
capitalizeFirst [] = []
capitalizeFirst (x:xs) = toUpper x : xs

-- 4. Write recursion for 3rd ex. to capitalize the full string.
capitalize :: String -> String
capitalize s = go s []
  where go [] acc = reverse acc
        go (x:xs) acc = go xs (toUpper x : acc)

-- 5. Write a function that will capitalize the first letter and return only it.
firstCapped :: String -> Char
firstCapped x = head $ capitalizeFirst x

-- 6. Write previous as composed function and then pointfree.
firstCapped' :: String -> Char
firstCapped' x = (head . capitalizeFirst) x

firstCapped'' :: String -> Char
firstCapped'' = head . capitalizeFirst

