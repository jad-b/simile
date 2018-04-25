module Main where

import System.Environment
import System.Exit

import Lib

main :: IO ()
main = getArgs >>= parse >>= putStrLn . simile

-- Parse only handles one argument at a time; this'll have to be improved upon.
parse :: [String] -> IO String
parse ["-h"] = usage >> exit
parse ["-v"] = version >> exit
parse [] = getContents -- No filename means read from stdin
-- Concatenate the given files' contents into one List
-- TODO) Generalize this for reading from streams
parse files = concat <$> mapM readFile files

usage :: IO ()
usage = putStrLn "usage: simile [-vh] [file..]"
version :: IO ()
version = putStrLn "Haskell simile 0.1"
exit :: IO a
exit = exitWith ExitSuccess
die :: IO a
die = exitWith (ExitFailure 1)
