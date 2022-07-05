import Data.List

uniao xa xb = map head (group (sort (xa ++ xb)))

main = do
    a <- readLn :: IO [Int]
    b <- readLn :: IO [Int]
    print $ uniao a b
