module MoreBottoms where

import Data.Bool

-- Rewrite
mappyExample = map (\x -> if x == 3 then (-x) else x)
-- using bool instead of the if-then-else syntax

mappyExample' = map (\x -> bool x (-x) (x == 3))

