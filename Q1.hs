-- Harshkumar Patel
-- Student Id: 10497308
--  Haskell function xor that takes two Booleans and returns the exclusive-or of the two values

xor :: Bool -> Bool -> Bool	          --taking two boolean values and getting result as a single boolean value
xor x y | x == True && y == False = True  --returns true only when only one of the boolean is true otherwise returns false.
        | x == False && y == True = True
        | otherwise = False