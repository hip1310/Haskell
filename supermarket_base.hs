-- Harshkumar Patel
-- Student Id: 10497308

-- Extended exercise: supermarket billing

-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^


-- Types of names, prices (pence) and bar-codes.




module Supermarket(Name,Price,BarCode,Database,codeIndex,TillType,BillType,lineLength,formatCents) where




type Name    = String

type Price   = Int

type BarCode = Int




-- The database linking names prices and bar codes.



type Database = [ (BarCode,Name,Price) ]



-- The example database we use is



codeIndex :: Database

codeIndex = [ (4719, "Fish Fingers" , 121),

              (5643, "Nappies" , 1010),

              (3814, "Orange Jelly", 56),
 
             (1111, "Hula Hoops", 21),

              (1112, "Hula Hoops (Giant)", 133),

              (1234, "Dry Sherry, 1lt", 540)]



-- The lists of bar codes, and of Name,Price pairs.



type TillType = [BarCode]

type BillType = [(Name,Price)]



-- The length of a line in the bill.



lineLength :: Int

lineLength = 30


 
formatCents :: Price -> String
formatCents p 
	   | (mod p 100) < 10 = show(div p 100) ++ ".0" ++ show(mod p 100)
           | otherwise = show(div p 100) ++ "." ++ show(mod p 100)

formatLine :: (Name,Price) -> String
formatLine (name,price) = name ++ replicate len '.' ++ fprice ++ "\n"
	where fprice = formatCents price
	      len  = lineLength - length name - length fprice

formatLines :: [(Name,Price)] -> String
formatLines = concat . map formatLine

formatBill :: BillType -> String
formatBill bill = formatLines bill ++ formatTotal (makeTotal bill)

look :: Database -> BarCode -> (Name,Price)
look db b = if res == [] then ("Unknown Item",0) else head res
	where res = [ (n,p) | (bn,n,p) <- db, b == bn ]

lookup' :: BarCode -> (Name,Price)
lookup' b = look codeIndex b

makeBill :: TillType -> BillType
makeBill = map lookup' 

makeDiscount :: BillType -> Price
makeDiscount xs = (div (length (filter (=="Dry Sherry, 1lt") (map fst xs))) 2) * 100

formatDiscount :: Price -> String
formatDiscount price = "\nDiscount" ++ replicate len '.' ++ fprice ++ "\n"
	where fprice = formatCents price
	      len  = lineLength - 8 - length fprice

makeTotal :: BillType -> Price
makeTotal bill = (sum (map snd bill)) - (makeDiscount bill)

formatTotal :: Price -> String
formatTotal price = "\nTotal" ++ replicate len '.' ++ fprice ++ "\n"
	where fprice = formatCents price
	      len  = lineLength - 5 - length fprice

formatBill' :: BillType -> String
formatBill' bill = formatLines bill ++ formatDiscount (makeDiscount bill) ++ formatTotal (makeTotal bill)

finalBill :: TillType -> String
finalBill bill = formatBill' (makeBill bill)

createFinalBill = do
               putStr (formatBill' (makeBill [1234,4719,3814,1112,1113,1234]))

