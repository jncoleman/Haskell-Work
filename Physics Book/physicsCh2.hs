-- simple physics functions

module PhysicsCh2 where 

-- here, we define a constant
e :: Double
e = exp 1

-- here, we define a function
square :: Double -> Double
square x = x ** 2

-- A rock is thrown up at 30 m/s from the ground. Ignore air resistance and represent
-- the position of the rock as a function of x. 
-- X, in this case, is time. 
yRock30 :: Double -> Double
yRock30 time = 30 * time - 9.8 * square time

-- exe 2.3
vRock30 :: Double -> Double
vRock30 time = 30 - 9.8 * time

-- exe 2.4 compute sin of an angle given in degrees
sinDeg :: Double -> Double 
sinDeg degree = (pi / 180) * sin degree 

-- exe 2.5
fun1 :: Double -> Double
fun1 var = var ** (1 / 3)

fun2 :: Double -> Double
fun2 var = (exp var) + (8 ** var) -- the parentheses are unnecessary here

fun3 :: Double -> Double
fun3 var = 1 / ((var - 5) ** 2 + 16)

fun4 :: Double -> Double
fun4 var = 1 / ((square $ var - 5) + 16)

fun5 :: Double -> Double
fun5 beta = 1 / ((1 - beta ** 2) ** (1/2))

add10 :: Double -> Double
add10 y = 1 / (10 + y)

fun6 :: Double -> Double
fun6 x = add10 (-1 * x) + add10 x

energy :: Double -> Double
energy position = 1 / abs (position ** 3)

energy2 :: Double -> Double
energy2 z_position = 1 / (((z_position ** 2) + 4) ** (3 / 2))

gamma = \beta -> 1 / (1 - beta*beta) ** (1/2)

-- write the function cos^2(x) in multiple ways in Haskell

cosFunOne :: Double -> Double
cosFunOne radians = cos radians ** 2

cosFunTwo :: Double -> Double
cosFunTwo radians = cos radians * cos radians 

cosFunThree :: Double -> Double
cosFunThree radians = square $ cos radians

-- f(x) = cos(x)
-- g(x) = x^2
-- f . g = g after f = ( cos(x) ) ^ 2
-- (f . g) (x) 
cosFunFour :: Double -> Double 
cosFunFour radians = (cos . square) radians

-- simpler form of composition of functions
cosFunFive :: Double -> Double
cosFunFive = cos . square

-- normal style of function
aabs :: Double -> Double
aabs number = abs number

-- point-free style of function
aabs2 :: Double -> Double
aabs2 = abs

invCub :: Double -> Double
invCub num = 1 / (num ^ 3)

num2g :: Double -> Double
num2g num = (invCub . aabs2) num 

-- point-free style
num2g2 :: Double -> Double
num2g2 = invCub . aabs 

