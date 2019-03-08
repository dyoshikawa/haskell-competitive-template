import Control.Monad
import Control.Applicative
import Data.List.Split

result :: Int -> String
result n =
  case even n of
    True -> "Even"
    False -> "Odd"

main :: IO ()
main = do
  input <- getLine
  let nums = map read (splitOn " " input) :: [Int]
  let prod = (head nums) * (last nums)
  putStrLn $ result prod
