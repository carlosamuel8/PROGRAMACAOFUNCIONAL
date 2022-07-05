
ehTriangulo x y z
    | (x + y) > z && (x + z) > y && (y + z) > x = True 
    | otherwise = False

main = do
    print $ ehTriangulo 1 2 3
    print $ ehTriangulo 2 2 3
    print $ ehTriangulo 7 2 3
    print $ ehTriangulo 1 5 3
    print $ ehTriangulo 3 2 3
    print $ ehTriangulo 2 5 6
    print $ ehTriangulo 8 9 5

