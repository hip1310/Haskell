-- Harshkumar Patel
-- Student Id: 10497308
-- Haskell function mean that takes a list of integers and returns the mean (i.e., average) value for the list.

getmean [] = 0							  -- if list is empty mean would be 0
getmean (x:xs) = ingetmean (x:xs) 0 0				  -- defining another function inside the main function 
ingetmean (x:xs) sumlist len =  ingetmean xs (sumlist+x) (len+1)  -- recursively finding the sum of all elements of a list and length of a list
ingetmean [] sumlist len = sumlist/len					