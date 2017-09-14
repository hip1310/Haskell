-- Harshkumar Patel
-- Student Id: 10497308
-- Haskell function natToBin that takes a natural number and returns its binary representation as a list of 0's and 1's

natToBin :: Int -> [Int]				
natToBin n = reverse (other n)				-- we have to reverse the final binary number to get it in correst order

other 0 = []						-- returns empty list for 0 (no binary representation)
other n | rem n  2 >= 1 = [1] ++ other (div n 2)	-- returns 0 if remainder is 0 otherwise 1
        | rem n  2 == 0 = [0] ++ other (div n 2)