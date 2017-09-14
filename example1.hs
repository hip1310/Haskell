module Example1 where

floorList' :: Ord a => a -> [a] -> [a]
floorList' b [] = []
floorList' b (x:xs)
         | x < b     = (b : floorList' b xs)
	 | otherwise = (x : floorList' b xs)

floorList'' :: Ord a => a -> [a] -> [a]
floorList'' b xs = floorList b xs []
        	   where floorList b [] ys   = ys	 
  			 floorList b (x:xs) ys 				
				| x < b     = floorList b xs (b:ys)
		         	| otherwise = floorList b xs (x:ys)

floorList''' :: Ord a => a -> [a] -> [a]
floorList''' b xs = map (\x -> if x < b then b else x) xs

exl :: (Ord a) => [a] -> (a,a)