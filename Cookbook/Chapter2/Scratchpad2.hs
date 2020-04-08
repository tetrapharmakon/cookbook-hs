module Chapter2.Scratchpad2 where

import Data.Char
import Data.List
import Data.Maybe
import Text.CSV

readCSV :: IO ()
readCSV = do
  let fileName = "data.csv"
  input <- readFile fileName
  let csv = parseCSV fileName input
  either handleError doWork csv
  where
    handleError csv = putStrLn "Sorry bub."
    doWork :: [Record] -> Record
    doWork =
      foldl1
        (\a x ->
           if name x == "Shiv"
             then x
             else a)
