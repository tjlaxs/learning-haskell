-- Warmup and review

-- 1.
stops = "pbtdkg"
vowels = "aeiou"

-- 1a. Write a function to create all possible 3-tuples of  stop-vowel-stop
--    combinations.
stopVowelStop = zip3 s1 v s2
  where ls = length stops
        lv = length vowels
        s1 = concat $ map (take (ls * lv) . repeat) stops
        v = concat $ take ls . repeat $ concat $ map (take ls . repeat) vowels
        s2 = concat $ take (ls * lv) $ repeat stops

-- 1b. Modify that function so that it only returns the combinations that begin
--    with a p.
stopVowelStop' = filter (\ (p, _, _) -> p == 'p') stopVowelStop 

-- 1c. Write function to generate possible noun-vowel-noun combinations.
nouns = filter (`notElem` vowels) ['a'..'z']

nounVowelNoun = zip3 s1 v s2
  where stops = nouns
        ls = length stops
        lv = length vowels
        s1 = concat $ map (take (ls * lv) . repeat) stops
        v = concat $ take ls . repeat $ concat $ map (take ls . repeat) vowels
        s2 = concat $ take (ls * lv) $ repeat stops



