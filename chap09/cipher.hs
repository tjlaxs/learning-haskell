module Cipher where

import Data.Char

caesar :: Int -> String -> String
caesar _ [] = []
caesar n s = go s []
  where go [] acc = reverse acc
        go (x:xs) acc = go xs (newX : acc)
          where sft = (ord x - ord 'a' + n) `mod` 26
                newX = chr $ ord 'a' + sft

unCaesar :: Int -> String -> String
unCaesar n = caesar (-n)

-- for testing
rot13 = caesar 13
c12 = caesar 12
uc12 = unCaesar 12

