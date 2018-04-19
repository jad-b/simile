module Main where

{-import Lib-}
import System.Environment
import System.Exit

main :: IO ()
main = getArgs >>= parse >>= putStrLn . simile

-- Equivalent to the string identity function
simile = unlines . lines

parse ["-h"] = usage >> exit
parse ["-v"] = version >> exit
-- TODO How to quickly view the type & info of getContents?
parse [] = getContents
parse fs = concat `fmap` mapM readFile fs

usage = putStrLn "usage: simile [-vh] [file..]"
version = putStrLn "Haskell simile 0.1"
exit = exitWith ExitSuccess
die = exitWith (ExitFailure 1)
