import Control.Monad
import Control.Applicative
import Data.List.Split

main :: IO ()
main = do
  input1 <- getLine
  input2 <- getLine
  input3 <- getLine
  let num1 = read input1 :: Int
  let nums = map read (splitOn " " input2) :: [Int]
  let sum = num1 + (head nums) + (head $ tail nums)
  let result = show sum
  putStrLn result