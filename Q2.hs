-- Harshkumar Patel
-- Student Id: 10497308
--  Haskell function mult that takes two natural numbers and returns their product

mult :: Int -> Int -> Int  		-- takes two integer values and return their multiplication (Integer)
mult x y 
     | y >=1 = x + mult (y-1) x         -- 2 * 3 = 2 + 2 + 2 (summation of 2 3 times)
     | otherwise = 0        

