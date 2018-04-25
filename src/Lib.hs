module Lib (
    simile
) where

-- Equivalent to the string identity function
simile :: String -> String
simile = unlines . lines
