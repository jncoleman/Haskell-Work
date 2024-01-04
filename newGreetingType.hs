-- newGreetingType.hs
module NewGreetingType where

-- purpose, write two functions where you will respond to the greeting of another
-- one function will use a valuse with a where expression, one function will use a function with a where expression
-- try to write fuor functions, two of which use the let / in functionality of Haskell
-- refer to greetIfCool.hs if you need any help with the functios

-- if they say, Hello or Hello, I say hello, if they say how are you, I say how are you,
-- if they say somethign else I say where are your manners?

-- first function, where with value
newGreetingOne :: String -> IO ()
newGreetingOne greeting = 
    if greets || greets2 -- checks if greets is true, moved to the end with a where statement
        then putStrLn "Hello. I'm doing quite well, thank you."
    else 
        putStrLn "Where are your manners?"
    where greets = greeting == "Hello, how are you?"
          greets2 = greeting == "How do you do?"

-- second function, where with function
newGreetingTwo :: String -> IO ()
newGreetingTwo greeting = 
    if greets greeting 
        then putStrLn "Hello. I'm doing quite well, thank you."
    else 
        putStrLn "Where are you manners?"
    where greets v = 
              v == "Hello, how are you?" || v == "How do you do?" -- look into this, simple function definiton

-- third function, in / let with value
-- with this, you push the new components to the front, (where moves them to the back)
newGreetingThree :: String -> IO ()
newGreetingThree greeting = let a = "Hello, how are you?"
                                b = "How do you do?"
                            in 
                                if greeting == a || greeting == b
                                    then putStrLn "Hello. I'm doing quite well, thank you."
                                else 
                                    putStrLn "Where are your manners?"

-- fourth function, in / let with function
newGreetingFour :: String -> IO ()
newGreetingFour greeting = let greets a = a == "Hello, how are you?" || a == "How do you do?"
                           in 
                            if greets greeting 
                                then putStrLn "Hello. I'm doing quite well, thank you."
                            else 
                                putStrLn "Where are your manners?" 

number :: Int -> Int
number nums = nums

theGreeting :: String 
theGreeting = "Hello, how are you?"

main :: IO ()
main = do
    newGreetingFour theGreeting
    