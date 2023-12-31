-- reverse.hs
module Reverse where 

currySentence :: String
currySentence = "Curry is awesome"


rvrs :: String -> String
rvrs sentence = 
        let partA = take 5 sentence
            partB = drop 9 sentence
            partC = take 4 (drop 5 sentence)
        in 
            partB ++ partC ++ partA

main :: IO ()
main = print $ rvrs currySentence