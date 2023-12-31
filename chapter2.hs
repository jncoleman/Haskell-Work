-- chapter2.hs
module Chapter2 where 

favoriteTVShow :: [Char] -> [Char]
favoriteTVShow showTitle = let wholeName = "the " ++ showTitle ++ " show"
                 in wholeName

showName :: String
showName = "Spongebob"

--string expression
firstName :: String
firstName = "Joshua"

lastName :: String
lastName = "Coleman"

wholeName :: String
wholeName = concat[a, " ", b]
   where a = firstName
         b = lastName

dateOfBirth :: Integer
dateOfBirth = 03281997

main :: IO ()
main = do 
    let myShow = favoriteTVShow showName
    putStrLn wholeName
    print    dateOfBirth
    print    myShow 