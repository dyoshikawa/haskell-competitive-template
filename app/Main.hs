import Control.Monad
import Control.Applicative
import Data.List

main :: IO ()
main = do
  n <- readLn
  (w:ws) <- replicateM n getLine
  putStrLn $ case check [w] ws True of
    Nothing -> "DRAW"
    Just True -> "WIN"
    Just False -> "LOSE"

check _ [] _ = Nothing
check dict@(la:_) (w:ws) b
  | last la /= head w = Just b
  | w `elem` dict = Just b
  | otherwise = check (w:dict) ws (not b)