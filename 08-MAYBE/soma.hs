import Data.List (elemIndex)

-- com o pattern math
purifica Nothing Nothing = Nothing
purifica (Just x) (Just y) = Just $ x + y
purifica Nothing (Just y) = Just y
purifica (Just x) Nothing = Just x

soma :: Maybe Int -> Maybe Int ->  Maybe Int  
soma a b = purifica a b

main = do 
    print $ soma (Just 5) (Just 7) 
    print $ soma (Just 5) Nothing 
    print $ soma Nothing (Just 3) 
    print $ soma Nothing Nothing 