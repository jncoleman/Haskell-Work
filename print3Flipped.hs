-- print3Flipped.hs
module Print3Flipped where 

myGreeting :: String
myGreeting = "Hello" ++ " world!"

hello :: String
hello = "hello"

world :: String
world = "world!"

main :: IO ()
main = do
    putStrLn myGreeting
    putStr secondGreeting 
      where secondGreeting = 
              (++) hello ((++) " " world)