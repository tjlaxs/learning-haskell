mySqr = [x^2 | x <- [1..5]]
myCube = [y^3 | y <- [1..5]]

-- 1. Write function that will make tuples of the outputs of mySqr and myCube.
myTuples = [(x, y) | x <- mySqr, y <- myCube]

-- 2. Same but with x and y being less than 50.
myTuples' = [(x, y) | x <- mySqr, y <- myCube, x < 50, y < 50]

