module Timer where

-- hr/min/sec
newtype Timer = Timer { duration :: (Int, Int, Int) } deriving (Show)

newTimer :: (Int, Int, Int) -> Timer
newTimer dur = Timer { duration = dur }
