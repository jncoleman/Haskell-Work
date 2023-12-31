-- print3BrokenFixed.hs
module Print3BrokenFixed where 

printSecond :: String -> IO ()
printSecond greeting = putStrLn greeting

main :: IO ()
main = do
    putStrLn greeting
    printSecond greeting
         where greeting = "Yarrrrr"

-- there are other ways to fix this, try to experiment