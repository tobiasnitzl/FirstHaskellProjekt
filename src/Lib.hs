-- / A Lib module
module Lib
    ( someFunc
    , square
    , ggt
    ) where

someFunc :: IO ()
someFunc = putStrLn "someFunc"
-- / Calculate the square of a number
square
    :: Num a => a -- ^ the number
    -> a -- ^ the square
square a = a^2

-- / Calculate the ggt of two integers
ggt
    :: Integer -> Integer -> Integer
ggt a b = if (b == 0) then b else if (a == 0) then a else if (a == b) then a else if (a < b) then ggt a (b - a) else ggt (a -b) b
