-- greetIfCool1.hs
module GreetIfCool1 where 

greetIfCool :: String -> IO ()
greetIfCool coolness = 
    if cool
        then putStrLn "Eyyyyy. What's shakin'?"
    else
        putStrLn "pshhhh."
    where cool =
            coolness == "downright frosty yo"


-- here we use a function, rather than a value, to define cool
greetIfCool2 :: String -> IO ()
greetIfCool coolness = 
    if cool coolness 
        then putStrLn "Eyyyyy. What's shakin'?"
    else 
        putStrLn "Pshhhhh."
    where cool v = 
        v == "downright frosty yo"