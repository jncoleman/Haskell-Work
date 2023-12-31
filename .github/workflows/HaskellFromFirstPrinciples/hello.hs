doubleMe x = x * 2

doubleUs x y = doubleMe x + doubleMe y

doubleSmallNumber x = if x > 100
    then x
    else x*2

doubleSmallerNumber' x = (if x > 200 then x else x*2) + 1

conanO'Brien = "It's me, Conan O'Brian!"

longList = [1,3,5,100]
longerList = 5:longList
evenLongerList = [[1,2], [3,4]]
specialList = head evenLongerList  
specialList1 = tail evenLongerList
characters = ['a'..'z']
--infiniteList = take 24 [1,3,(5...)]
--reverseList = [100,(99...1)]

boomBang xs = [if x < 10 then "BOOM!" else "BANG!" | x <- xs, odd x]
{-
[ COMPREHENSION | CONDITION, PREDICATE ], look into set comprehensions
-- this can be translated into english as follows
-- We define a function boomBang which takes xs as an argument
-- if x is greater than 10, then we replace it with BOOM
-- given x is an element of xs
-- predicated on odd x
-- odd x returns TRUE if x is ODD and FALSE if x is EVEN

    FILTERING, the proccess of winnowing a list by predicates
-}

newList = [ x*y | x <- [3, 4, 7], y <- [5, 10, 15], x*y > 30]

{-
    this is a value that is defined through a list comprehension
    x * y given that x is 3 4 7 and y is 5 10 15
    it will return values that are greater than 30
    the final list will be concatinated with all combinations
-}

length'2 xs = sum [1 | _ <- xs]

{-
    the _ is a character that represents something from the list, 
    we use it if we don't care what we need from the list

        replaces every element with a one and returns the sum, clever
-}

-- NESTES LISTS

someThingSquared xxs = [ [ x | x <- xs, even x ] | xs <- xxs]

-- this takes a list containing lists
-- give it [[1, 2, 4, 5] repeat] and it will remove all of the 
-- odd numbers without removing the fact that it is a list of lists

triangles = [ (a,b,c) | a <- [1..100], b <- [1..100], c <- [1..100], a^2 + b^2  == c^2]

-- a math function, and it runs perfectly!

functionName :: String -> IO ()
functionName functionParameter = 
    putStrLn("Enter the function parameter next, " ++ functionParameter ++ ". As you can see.")

enterName :: String -> IO ()
enterName name = putStrLn("Hello, " ++ name ++ ". How are you doing today?")

enterResponse :: String -> IO ()
enterResponse response = putStrLn("Well, I'm glad to know that you're " ++ response ++ ". I hope we can make today even better.")

enterAge :: String -> IO ()
enterAge age = 
    putStrLn(age)

personalInformation :: String -> String -> IO ()
personalInformation name response = 
    putStrLn("I see that your name is " ++ name ++ " and you are feeling " ++ response ++ ". Is that correct? ")

testTrial :: String -> String
testTrial name = "My name is " ++ name

-- this was intended to take the output from one program as the input of another program
testTrial2 :: IO () -> String
testTrial2 enterAge = "The age is " ++ enterAge