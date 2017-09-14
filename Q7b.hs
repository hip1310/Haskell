-- Harshkumar Patel
-- Student Id: 10497308
-- function natToBase that takes a base b(b >= 2) and a natural number and returns the base b representation of the natural number as a list of integer digit

natToBase :: Int -> Int -> [Int]
natToBase b n = reverse (other b n)
other b 0 = []
other b n | rem n  b >= 1 = [rem n b] ++ other b (div n b)  -- dividing the number with the base
          | rem n  b == 0 = [0] ++ other b (div n b)        -- if remainder is >=1 returns the remainder otherwise 0