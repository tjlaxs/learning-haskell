
-- 1. Using takeWhile and dropWhile write function that takes a
--    string and returns a list of strings using space as a separator.
myWords :: String -> [String]
myWords x = go (dropWhile space x) []
  where go [] acc = reverse acc
        go x acc = go (dropWhile space $ dropWhile word x) (takeWhile word x : acc)
        space = (== ' ')
        word = (/= ' ')

-- 2. Write function that takes a string and returns a list of strings,
--    using newline separators to break up the string.

firstSen = "Tyger Tyger, burning bright\n"
secondSen = "In the forests of the night\n"
thirdSen = "What immortal hand or eye\n"
fourthSen = "Could frame thy fearful symmetry?"
sentences = firstSen ++ secondSen
            ++ thirdSen ++ fourthSen

mySplit :: Eq a => a -> [a] -> [[a]]
mySplit separator x = go (dropWhile notword x) []
  where go [] acc = reverse acc
        go x acc = go (dropWhile notword $ dropWhile word x) (takeWhile word x : acc)
        notword = (== separator)
        word = (/= separator)

myLines :: String -> [String]
myLines = mySplit '\n'

