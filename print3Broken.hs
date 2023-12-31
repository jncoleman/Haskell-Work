-- print3Broken.hs
module Print3Broken where 

printSecond :: IO ()
printSecond = do 
    putStrLn greeting

main :: IO ()
main = do 
    putStrLn greeting
    printSecond 
    where greeting = "Yarrrrrrr"

{-
look at the error code
6:14 = line 6, column 14
Not in scope, that is, the variable is not VISIBLE to the printSecond function
the thing that is referred to is not visible or in scope
-}