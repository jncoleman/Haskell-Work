-- ch2Functions.hs
module Ch2Functions where 

-- define a variable
e :: Double
e = exp 1

-- define a function
square :: Double -> Double
square squareThis = squareThis ** 2

cube :: Float -> Float
cube cubeThis = cubeThis ** 3

quadratic :: Float -> Float
quadratic variable_here = (3 * (variable_here ** 2)) - (4 * variable_here) + 5

trigCos :: Float -> Float
trigCos newVar = cos a
        where a = newVar * pi

linear :: Int -> Int
linear lin = 10 * lin + 20

exponent1 :: Double -> Double
exponent1 some = exp (-some)

-- new way to write functions without all of the extra stuff
-- notice how similar it looks to lambda calculus notation
lambda_one = \x -> x ** 3
lambda_two = \x -> 3 * x**2 - 4 * x + 5
lambda_three = \x -> cos (2 * x)
-- did not work :( lambda_four = \xy -> x * y

tick :: Float
tick = 10

vRockInitialY :: Float
vRockInitialY = 0

vRockInitialX :: Float 
vRockInitialX = 10

vRockX :: Float -> Float
vRockX time1 = 3 * time1 ** 2 + vRockInitialX

vRockY :: Float -> Float
vRockY time2 = -9.8 * time2 ^ 2 + vRockInitialY

finalVelocityVector :: Float -> Float -> Float
finalVelocityVector velX velY = sqrt ((+) (velX**2) (velY**2))

main :: IO ()
main = do
    let vector = finalVelocityVector (vRockX tick) (vRockY tick)
    print vector