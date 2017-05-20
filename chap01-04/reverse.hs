module Reverse where

rvrs :: String -> String
rvrs x = concat [awesome, " ", is, " ", curry]
  where curry = take 5 x
        is = take 2 $ drop (5 + 1) x
        awesome = drop (5 + 1 + 2 + 1) x

main :: IO ()
main = print (rvrs "Curry is awesome")
