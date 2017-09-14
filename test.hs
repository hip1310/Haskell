test_xor = 
  do
     putStr "xor True  True  = "
     putStrLn (show (xor True True))
     putStr "Success:  "
     putStrLn (show (xor True True == False))
     putStr "xor True  False = "
     putStrLn (show (xor True False))
     putStr "Success:  "
     putStrLn (show (xor True False == True))
     putStr "xor False True  = "
     putStrLn (show (xor False True))
     putStr "Success:  "
     putStrLn (show (xor False True == True))
     putStr "xor False False = "   
     putStrLn (show (xor False False))
     putStr "Success:  "
     putStrLn (show (xor False False == False))