-- 1. Write a filter function that will give all multiples of 3 out of a list
multiplesOfThree :: Integral a => [a] -> [a]
multiplesOfThree = filter (\x -> rem x 3 == 0)

-- 2. Get the length of above list
numberOfMOT :: Integral a => [a] -> Int
numberOfMOT = length . multiplesOfThree

-- 3. Write function to remove all the articles ('the', 'a' and 'an') from
--    sentences.
myFilter :: String -> [String]
myFilter = filter (\x -> x `notElem` ["the", "a", "an"]) . words

