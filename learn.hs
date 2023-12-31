-- it is good to get into the habit of naming your files, 
-- adding the module [File name] will allow you to call it later
module Learn where

-- f $ a = f a, but RIGHT ASSOCIATIVE (like exponentiation) rather than LEFT ASSOCIATIVE

firstFunction :: Int -> Int
firstFunction x = x^2 + 10

-- here, we use the function $ value construction (*y) is a function and firstFunction y is also a function
-- firstFunction y may not work here, but we will test it
secondFunction :: Int -> Int
secondFunction y = (*y) $ firstFunction y

-- here I first tried firstFunction z $ (z*2), but that didn't work because firstFunction would be a value, 
-- and not a function. 
thirdFunction :: Int -> Int
thirdFunction z = firstFunction $ (z*2)

testTrial :: Int -> Int -> Int
testTrial x y = x + y

-- Now, I'm beginning to think that the $ will delay the value until the next part. It will fill in the next
-- variable until necessary.
testTrialNumberTwo :: Int -> Int
testTrialNumberTwo x = testTrial x $ firstFunction 2

variable_1 = 1
variable_2 = 2
variable_3 = 3
variable_4 = 4
variable_5 = 5

