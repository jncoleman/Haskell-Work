-- FunctionWithWhere.hs
module FunctionWithWhere where

--
printInc n = print plusTwo
  where plusTwo = n + 2

-- lining things up is only by convention
mult1       = x * y
    where x = 6
          y = 6

-- let x = 3; y = 1000 in x * 3 + y REWRITE WITH WHERE
reWriteOne = x * 3 + y 
   where x = 3
         y = 1000

-- let y = 10; x = 10 * 5 + y in x * 5
reWriteTwo = x * 5
   where y = 10
         x = 10 * 5 + y

-- let x = y
--     y = negate x
--     z = y * 10
--  in z / x + y
reWriteThree = z / x + y
     where x = 7
           y = negate x
           z = y * 10
-- this is sort of an infinite loop, nevermind, I fixed it


-- from book
z1 = 7
y1 = z1 + 8
x1 = y1 ^ 2
waxOn = x1 * 5

triple1 x1 = trippled
   where trippled = x1 * 3;

waxOff x = triple1 x