-- chapter2.hs
module Chapter2 where 

favoriteTVShow :: [Char] -> [Char]
favoriteTVShow showTitle = let wholeName = "The " ++ showTitle ++ " Show"
                 in wholeName
{-
for functions, we write the types as a list of types for your arguments and then a type for your return value
[type parameter_1] -> [type parameter_2] -> ... -> [type parameter_n] -> [type return_value]
-}


--for variables, you only need the type of the variable (more on this later)
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

{-
Here I first attempted myShow = favoriteTVShow showName. However, this did not work due to the fact that 
main's output is IO. myShow being declared as a variable woudl result in a side effect not stated in the
function name. Thus, we needed a let statement. 
-}