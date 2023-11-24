-- PomodoroTimer.hs
module PomodoroTimer where

import Timer

data PomodoroTimer = PomodoroTimer
  { numRounds :: Int
  -- hr/min/sec
  , workDuration :: (Int, Int, Int)
  -- hr/min/sec
  , breakDuration :: (Int, Int, Int)
  } deriving (Show)

newPomodoroTimer :: Int -> (Int, Int, Int) -> (Int, Int, Int) -> PomodoroTimer
newPomodoroTimer rounds workDur breakDur = PomodoroTimer
  { numRounds = rounds
  , workDuration = workDur
  , breakDuration = breakDur
  }
