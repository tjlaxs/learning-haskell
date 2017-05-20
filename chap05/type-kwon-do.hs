-- 1.
data Woot
data Blah

f1 :: Woot -> Blah
f1 = undefined

g1 :: (Blah, Woot) -> (Blah, Blah)
g1 (x, y) = (x, f1 y)

-- 2.
f :: Int -> String
f = undefined

g :: String -> Char
g = undefined

h :: Int -> Char
h x = g $ f x

-- 3.
data A
data B
data C

q :: A -> B
q = undefined

w :: B -> C
w = undefined

e :: A -> C
e x = w $ q x

