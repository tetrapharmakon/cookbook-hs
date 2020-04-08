module Main where

import qualified Data.ByteString.Lazy as B

import Chapter1.Scratchpad1
import Chapter10.Scratchpad10
import Chapter11.Scratchpad11
import Chapter12.Scratchpad12
import Chapter2.Scratchpad2
import Chapter3.Scratchpad3
import Chapter4.Scratchpad4
import Chapter5.Scratchpad5
import Chapter6.Scratchpad6
import Chapter7.Scratchpad7
import Chapter8.Scratchpad8
import Chapter9.Scratchpad9

main :: IO ()
main = putStrLn "a"
--   name <- getArgs
--   input <- B.readFile $ head name --"app/gauss.json"
--   let mm = decode input :: Maybe Mathematician
--   case mm of
--     Nothing -> print "error parsing JSON"
--     Just m -> (putStrLn . greet) m
