square :: Num a => a -> a
square x = x * x

main :: IO()
main = do 
    let number = 5
    putStrLn ("The square of " ++ show number ++ "is the number " ++ show (square number))
