ehPoligno xs 
    | (sum xs) - (maximum xs) >  maximum xs = True 
    | otherwise = False
    
main = do
    print (ehPoligno [2,3,4,9]) --false
    print (ehPoligno [2,3,9,3]) --false
    print (ehPoligno [2,3,6,3])--true
    print (ehPoligno [8,3,9,3]) --true
    print (ehPoligno [8,3,9,3,25]) --false
    print (ehPoligno [8,3,9,6,25]) --true