--from the book
sayHello :: String -> IO ()
sayHello x =
    putStrLn("Hello, " ++ x ++ "!")

--my personal code
saySomething :: String -> IO ()
saySomething x = 
    putStrLn("Something needs to be done about " ++ x ++ " right now.")
    --putStrLn("Or else, I will need to go upstairs and turn off your game.")
    --For some reason, the second line would not work with this.


--addNumbers :: Int -> Int -> IO ()
--addNumbers x y = 
--    x + y
--1    putStrLn("The number is " + )

triple2 x = x * 3
-- four parts, name; parameters; equals sign; and expression 