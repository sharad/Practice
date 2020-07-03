
-- import Control.Monad  
import System.IO


filterM :: (Monad m) => (a -> m Bool) -> [a] -> m [a]
filterM p []     = return []
filterM p (x:xs) = do { b <- p x; ys <- filterM p xs; return (if b then x:ys else ys) }
filterM (\x -> [True,False]) [1,2,3]

main :: IO []
                     
main = do (filterM (\x -> [True, False]) [1,2,3])
          



