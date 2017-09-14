-- Harshkumar Patel
-- Student Id: 10497308
-- Haskell function adjpairs that takes a list and returns the list of all pairs of adjacent elements.

adjpairs [] = []				  -- if list is empty it returns empty list
adjpairs (x:[]) = []				  -- if there is only one element in list then also it returns empty list because it can't make a pair
adjpairs (x:y:zs) = (x, y) : adjpairs (y : zs)    -- recursively making pairs of adjacent elements and returning them as a list