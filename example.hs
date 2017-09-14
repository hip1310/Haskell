module Example
              where

spaces' :: Int -> String
spaces' n = replicate n ' ' 

left' :: Int -> String -> String
left' n xs
         | n == length xs = xs
 	 | n >  length xs = xs ++ take (n-(length xs)) (spaces' n)
         | n <  length xs = reverse (drop ((length xs) - n) (reverse xs))