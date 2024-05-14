module PhysicsCh3Exercises where 

heaviFunction :: Double -> Double
heaviFunction x = if (x <= 0)
                  then 0
                  else x

energyFunction :: Double -> Double
energyFunction r = if (r <= 1)
                   then r
                   else r ** (-2)

