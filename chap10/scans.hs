-- Scans Exercises

fibs = 1 : scanl (+) 1 fibs

-- 1. Modify fibs function to return only the first 20 Fibonacci numbers.
fibs20 = undefined

-- 2. Modify fibs to return the Fibonacci numbers that are less than 100.
fibsLt100 = undefined

-- 3. Try to write the factorial function as scan.
factorial :: Integer -> Integer
factorial 0 = 1
factorial n = n * factorial (n - 1)

factorial' = undefined

