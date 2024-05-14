-- dataTypeTest.hs
module DataTypeTest where 

data Mood = Blah | Woot deriving Show
data Mood2 = G | B deriving Show

-- PATTERN MATCHING
-- we define a function by matching on a data constructor, or value,
-- and describing the behavior that the function should have vased on which value it matches
-- the underscore denotes a catch all case, i.e. otherwise
changeMood :: Mood -> Mood
changeMood value = Woot
changeMood     _ = Blah

-- the function will return the opposite type, but not change the value of the mood
-- similar to the Not funciton
currentMood :: Mood
currentMood = Blah