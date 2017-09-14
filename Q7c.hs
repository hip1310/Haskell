-- Harshkumar Patel
-- Student Id: 10497308
-- haskell function baseToNat that takes a base and and base b representation of any number and returns that number (base 10 representation of that number)


baseToNat :: Int -> [Int] -> Int
baseToNat b xs = other b xs 0
	           where other b [] y = y
       		         other b (x:xs) y = other b xs ((y*b)+x)  -- base 5 [1,3,2] then (2 * (5^0) + 3 * (5^1) + 1 * (5^2))
								  -- taking extra variable y (incrementing y's value recursively to get the result)
