-- chapter3Questions.hs
module Chapter3Questions where

randomString :: String
randomString = "This is a random String"

curryString :: String
curryString = "Curry is awesome"

functionA :: String -> String 
functionA string_1 = string_1 ++ "!"

functionB :: String -> Char
functionB string_1 = string_1 !! 4

functionC :: String -> String
functionC string_1 = drop 9 string_1

thirdLetter :: String -> Char
thirdLetter x = x !! 2

letterIndex :: Int -> Char
letterIndex x = randomString !! x

--use take and drop functions
rvrs :: String -> String
rvrs sentence = 
        let partA = take 5 sentence
            partB = drop 9 sentence
            partC = take 4 (drop 5 sentence)
        in 
            partB ++ partC ++ partA
