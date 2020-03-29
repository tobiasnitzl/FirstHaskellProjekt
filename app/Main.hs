module Main where

import System.IO (BufferMode (NoBuffering), hSetBuffering, stdout)
import Lib (someFunc, square)

main :: IO ()
main = do
    hSetBuffering stdout NoBuffering
    putStr "Geben Sie bitte eine Zahl ein (0 == Ende): "
    number <- readLn ::IO Double
    if number == 0.0
        then putStrLn "Ciao" 
        else do
            putStrLn ("square(" ++ show number ++ ") = " ++ show (square number)) 
            main
