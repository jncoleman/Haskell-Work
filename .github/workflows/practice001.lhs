This is a literate haskell file, this means that all code must be preceded by
"> ", a carrot and a space, and everything else is considered to be non-code.

It is a good idea to do your homeowrk in this kind of file, to keep things setParserState

> x :: Int
> x = 3

This is bit of code, what it means
"x HAS TYPE Int"
"x IS DEFINED AS/TO BE 3"

note that in other programming languages, we would say "x is assigned to 3"
this allows us to change the assignment later, if we choose. However, in Haskell, 
the = sign is a definition operator, and x cannot be changed later without incuring an error

which you don't want

-- x = 4

Insert that below and you'll see what happens

-- Machine Sized Integers 

> i :: Int
> i = -78
> biggestInt, smallestInt :: Int
> biggestInt = maxBound
> smallestInt = minBound

``please note that when you leave a variable unusued, haskell has a problem with it

The INT type is set up with the limits of Haskell, it depends on the version that you use
the code above will tell you the upper and lower limits of the machine

In order to use the full extent of you memory, you should use the INTEGER type


-- Arbitrary-Precision Integers

> reallyBig :: Integer
> reallyBig = 12345678909876543212345678909876

-- Double-Precision Integers

> d1, d2 :: Double
> d1 = 12.30823
> d2 = 102938.1232

-- Booleans 

> b1, b2 :: Bool
> b1 = True
> b2 = False 

-- Unicode Characters

> c1, c2, c3, :: Char
> c1 = 'x'
> c2 = '$'
> c3 = '@'

-- Strings 
> str :: String
> str = "Hello, haskell!"

Now, onto GHCi, which is an interactive Haskell REPL Read Eval Print Loop

`` are called BACKTICKS, and they are in the upper left-hand corner of your keyboard
they can be used to INFIX a function, meaning place it in between two arguments
for example: 1 `mod` 2 is similar to mod 1 2


-- /////////////////////////////////////////////
Follow your same conventions about not mixing types, it makes for sloppy code, for example

> badArith = i + n
this gives an error because i is an int and n is an Integer,
it may seem annoying at first, but you will learn to love it

Similarly 
> badArith2 = i / i 
will return an error because the / operator only works for floting point division
for integer division, we use i `div` i 

BOOLEAN LOGIC 

True && True
False || False
not (False || False)

if expression : has if, else, maybe then
if statements : just has if, maybe then

--///////////////////////////////

BASIC FUNCTIONS

sumtorial :: Integer -> Integer
sumtorial 0 = 0
sumtorial n = n + sumtorial (n-1)

This is a recursive function that will provide the sum of n numbers
It takes an integer and returns another integer

Each clause is checked in order from TOP to BOTTOM and the first matching 
clause is chosen. In this case if we try sumtorial 3, first case is 0. 3 
is not 0, thus it tried n. The variable n matches with 3, and we start evaluating



--//////////////////////////////
hailstone :: Integer -> Integer
hailstone n
    n `mod` 2 == 0  = n `div` 2
    otherwise       = 3*n + 1

these are called GUARDS, any number of CASES can have any number of GUARDS 
each GUARD witll be evaluated in order from top to bottom. Guards have 
BOOLEAN values that they return. 

For example, suppose we evaluate hailstone 3. First, 3 is matched against n, 
which succeeds (since a variable matches anything). Next, n `mod` 2 == 0 is evaluated; 
it is False since n = 3 does not result in a remainder of 0 when divided by 2. 
otherwise is just an convenient synonym for True, so the second guard is chosen, 
and the result of hailstone 3 is thus 3*3 + 1 = 10.