-- print3.hs
module Print3 where

myGreeting :: [Char]
myGreeting = "hello" ++ " world!"

-- DECLARE TYPE of each top level expression, not necessary, but a good habit to get into
hello :: String
hello = "hello"

world :: [Char] --notice both String and [Char] work here
world = "world"

main :: IO ()
main = do
    putStrLn myGreeting
    putStrLn secondGreeting
      where secondGreeting = concat[hello, " ", world]