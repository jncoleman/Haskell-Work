-- simpleMathFunctions.hs
module SimpleMathFunctions where 

--here, we list two ways to write the function. Remember, each of these are still functions, they're only infix functions
-- not functions that you would call normally
minMaxValue :: Double -> Double -> Double -> Bool
minMaxValue min max x = x >= min && x <= max
--(&&) ((>) x min) ((<) x max)


in_range :: Int -> Int -> Int -> Bool
in_range min max x = x >= min && x <= max

{-
many times in imperative code, we want to save the value of some result, for example in the above example
maybe we want to know if each individual part is true or false. Now we would use the let binding. 
-}

-- imperative style code with "LET BINDING" 
-- let is what BINDS the new variable
in_rangeWithLet :: Int -> Int -> Int -> Bool
in_rangeWithLet min max x =
    let in_range_lower = x >= min -- this is your ABSTRACTIOn, to save a variable
        in_range_upper = x <= max
    in 
        (&&) in_range_lower in_range_upper -- this is your RESULT

in_rangeWithWhere :: Double -> Double -> Double -> Bool
in_rangeWithWhere min max x = lower_bound && upper_bound --WHERE KEEPS THE RESULT AT THE TOP
     where lower_bound = x >= min -- the abstraction comes lower
           upper_bound = x <= max

newValue :: [Int]
newValue = concat[tail [1, 2, 3], tail [4, 5, 6], tail [7, 8, 9]]

time :: Float
time = 100.0

gravity :: Float
gravity = 9.8

position :: Float
position = negate gravity * time * time + startingVelocity * time + startingPosition

startingPosition :: Float
startingPosition = 10

velocity :: Float
velocity = negate gravity * time + startingVelocity

startingVelocity :: Float
startingVelocity = 100

acceleration :: Float
acceleration = negate gravity
