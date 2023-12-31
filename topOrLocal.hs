-- topOrLocal.hs
module TopOrLocal where

-- notice that we explicitly stated the type of woot, this is not necessary, but a good habit to get into
-- it is not necessary because of Haskell's TYPE INFERENCET
topLevelFunction :: Integer -> Integer
topLevelFunction x =
    x + woot + topLevelValue
    where woot :: Integer
          woot = 10

topLevelValue :: Integer
topLevelValue = 5