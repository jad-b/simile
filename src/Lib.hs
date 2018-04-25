module Lib (
    simile,
    Matcher, train, match, score
) where

-- Equivalent to the string identity function
simile :: String -> String
simile = unlines . lines

-- A matcher that for finding similarities between sample text and the corpus
-- it was trained upon.
class Matcher a where
    -- Train the matcher upon a data set
    train :: [String] -> a
    -- Compare text to the learned set
    match :: a -> String -> Match
    -- Score the performance of the Matcher against a test set with answers
    score :: a -> [String] -> [String] -> Score

-- What should a match return?
-- https://en.wikibooks.org/wiki/Haskell/Classes_and_types
-- https://mmhaskell.com/blog/2017/4/3/compile-driven-learning
data Match = Match
  { _input :: String

  } deriving (Show)

data Score = Score
  { _percent :: Rational
  , _successes :: Int
  , _failures :: Int
  } deriving (Show)
