module Main where

import System.Environment
import System.Exit

import Lib

main :: IO ()
main = getArgs >>= parse >>= putStrLn . simile

parse :: [String] -> IO String
parse ["-h"] = usage >> exit
parse ["-v"] = version >> exit
parse [] = getContents
parse fs = concat `fmap` mapM readFile fs

usage :: IO ()
usage = putStrLn "usage: simile [-vh] [file..]"
version :: IO ()
version = putStrLn "Haskell simile 0.1"
exit :: IO a
exit = exitWith ExitSuccess
die :: IO a
die = exitWith (ExitFailure 1)
