module PhysicsCh4 where

-- DESCRIBING MOTION

--average velocity = delta position / delta time = (x_f - x_i) / (t_f - t_i)
-- this can be written in a functional notation
-- v_avg t_f, t_i, x(t) = x(t_f) - x(t_i) / t_f - t_i, and thus the change can be computed

--TYPE DECLARATION
type R = Double

--TYPE VARIABLES
type Time           = R
type TimeInterval   = R
type Position       = R
type Velocity       = R

--TYPE DECLARATION FOR FUNCTIONS
--the first value is the input, the terminal value is the position 
--remember '->' is RIGHT ASSOCIATIVE
type PositionFunction = Time -> Position
type VelocityFunction = Time -> Velocity

--DERIVATIVE operator in mathematics is
-- lim as dx approaches 0 of ( f(x + dx) - f(dx) ) / dx
--We can change this order by introducing a dx variable in the numberator
-- lim as dx approaches 0 of ( f(x + dx/2) - f(x - dx/2) / dx

type Derivative = (R -> R) -> R -> R -- or (R -> R) -> (R -> R) 

derivative :: R -> Derivative
derivative dt x t = ( x (t + (dt / 2)) - x (t - (dt / 2))) / dt

-- x(t) = cos(t)
carPosition :: Time -> Position
carPosition time = cos time

-- x = cos
carPosition' :: Time -> Position
carPosition' = cos 

-- v = x' = Dx
carVelocity :: Time -> Velocity
carVelocity = derivative 0.01 carPosition

-- v(t) = x'(t) = Dx(t)
carVelocity' :: Time -> Velocity
carVelocity' time = derivative 0.01 carPosition time


velFromPos :: R                  --velocity from Position, we start with position and end with velocity, R = time
           -> (Time -> Position) -- position function
           -> (Time -> Velocity) -- velocity function
velFromPos dx x = derivative dx x

-- in point-free style
velFromPos' :: R
           -> (Time -> Position)
           -> (Time -> Velocity)
velFromPos' = derivative

--function that will return the position assuming constant velocity (CV)
positionCV :: Position -> Velocity -> Time -> Position
positionCV x0 v0 t = v0 * t + x0

-----------------------
type Acceleration = R

--acceleration is the first derivative of velocity
carAcceleration :: Velocity -> Acceleration
carAcceleration time = derivative 0.01 carVelocity time

carAcceleration' :: Velocity -> Acceleration
carAcceleration' = derivative 0.01 carVelocity

accFromVel :: R                         -- dt
           -> (Time -> Velocity)        -- velocity function
           -> (Time -> Acceleration)    -- acceleration function 
accFromVel = derivative

accFromVel' :: R                         -- dt  
           -> (Time -> Velocity)        -- velocity function
           -> (Time -> Acceleration)    -- acceleration function
accFromVel' time velocity = derivative time velocity
-- this was confusing at first, but the derivative operator returns a function, so the type works
-- what confuses me is that the velocity function needs it's own value to have, at least that's what
-- I assumed. 

--problem 4.1
--f(x) = 1/2 x^2
functionOne :: R -> R
functionOne var = (1/2) * (var ** 2)

otherFunction :: R -> R
otherFunction x = 10 * exp x

trueDerivative :: R -> R
trueDerivative x = 3 * (x ^ 2)

nextFunction :: R -> R
nextFunction = derivative 0.01 otherFunction

functionTwo :: R -> R
functionTwo var = derivative 0.01 functionOne var

functionThree :: R -> R
functionThree var = derivative 0.1 functionOne var

functionFour :: R -> R
functionFour var = derivative 10 functionOne var

functionFive :: R -> IO()
functionFive number = do
                    print (functionOne number)
                    print (functionTwo number)
                    print (functionThree number)
                    print (functionFour number)

newD :: R -> R
newD x = derivative 0.1 cos x

newD' :: R -> R
newD' x = derivative 0.2 cos x
