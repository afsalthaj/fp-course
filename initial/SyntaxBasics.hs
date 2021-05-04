-- function application is left associative
-- function declaration is right associative
-- x :: Integer -> Integer -> Integer [implies]  x :: Integer -> (Integer -> Integer)
-- x 5 1 [implies] (x 5) 1
-- operators beginning with non-alpha character is an infix operator by default

y :: Integer
y = 1

x :: a -> b -> a
x = \a -> \_ -> a

data Shape = 
    Rectangle Integer Integer | Square Integer | Triangle Integer Integer Integer
    deriving (Eq, Show)

myTriangle :: Shape
myTriangle = Triangle 3 4 5

perimeter :: Shape -> Integer
perimeter =  \s -> case s of
    Rectangle w h -> (w + h) * 2
    Square a -> a * 4
    Triangle a b c ->  a + b + c

perimeterAgain :: Shape -> Integer
perimeterAgain (Rectangle w h) = (w + h) * 2
perimeterAgain (Square w) = w * 4
perimeterAgain (Triangle a b c) = a + b + c
-- replace above line with perimeterAgain any = 99
-- or replace above line with perimeterAgain _ = 99
-- or perimeterAgain (Rectangle w h) = if we == 4 then 77 else (w + h) * 2


-- what is industry doing?
-- Why is functional programming counter intuitive?
-- p1 = 
--   insert 9999995 LOC here
--   method( 2  + 2);
--   insert 100 LOC here

-- p2 = 
--   insert 9999995 LOC here
--   method(4);
--   insert 100 LOC here
-- yep nothing changed

-- p3 = 
--   insert 9999995 LOC here
--     StringBuilder sb = new StringBuilder();
--     metho(sb.append("abc"), sb.append("abc"))
--   method( 2  + 2);
--   insert 100 LOC here

-- p4 = 
--   insert 9999995 LOC here
-- StringBuilder sb = new StringBuilder();
-- val x = sb.append(c)
-- method(x, x);
-- insert 100 LOC here
-- changed

-- to naively replace expressions with values, without program changing
-- well, look at that in haskell

    






