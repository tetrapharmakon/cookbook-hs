{-# LANGUAGE BlockArguments #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

module Chapter1.Scratchpad1 where

import Control.Applicative
import Control.Exception (SomeException, catch)
import Data.Aeson
import qualified Data.ByteString.Lazy as B
import Data.Char
import Data.List
import Data.Maybe
import GHC.Generics
import System.Directory (doesFileExist)
import System.Environment

data Mathematician =
  Mathematician
    { name :: String
    , nationality :: String
    , born :: Int
    , died :: Maybe Int
    }
  deriving (Generic)

instance FromJSON Mathematician

countWords :: String -> Integer
countWords = sum . map (toInteger . length . words) . lines

greet m = (show . name) m ++ " was born in the year " ++ (show . born) m

main1 :: IO ()
main1 = do
  args <- getArgs
  let filename =
        case args of
          (a:_) -> a
          _ -> "void.txt"
  input <-
    catch (readFile filename) $ \err ->
      print (err :: SomeException) >> return ""
  print $ countWords input

main2 :: IO ()
main2 = do
  args <- getArgs
  let filename =
        case args of
          (a:_) -> a
          _ -> "void.txt"
  exists <- doesFileExist filename
  input <-
    if exists
      then readFile filename
      else return ""
  print $ countWords input
