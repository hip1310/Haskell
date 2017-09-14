-- Harshkumar Patel
-- Student Id: 10497308
-- Haskell function to compute the maximum value in a nonempty list of integers

findMax :: (Ord a) => [a] -> a		      --accepts the value of any order type
findMax [] = error "Empty List"	      -- if list is empty gives an error`
findMax [x] = x			      -- if there is only one element in list then returns that element as a maximum element
findMax (x:y:xs)		      -- recursively finding maximum element from list
         | x>y = findMax(x:xs)
	 | otherwise = findMax(y:xs)