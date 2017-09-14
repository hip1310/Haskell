ins :: Ord a => a -> [a] -> [a]
ins x [] = [x]
ins x (f:fs)
  | x <= f    = (x : f : fs)
  | x > f     = (f : ins x fs)
 