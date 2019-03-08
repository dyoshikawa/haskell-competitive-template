import Control.Monad
import Control.Applicative
import Data.List.Split

main :: IO ()
main = do
  input1 <- getLine
  input2 <- getLine
  input3 <- getLine
  let num1 = read input1 :: Int
  let nums = map (read (splitOn " " input2))
  let sum = num1 + num2
  let result = show sum
  putStrLn result