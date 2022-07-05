mytails [] = [[]]
mytails xs = xs : (mytails $ tail xs) -- adiciono a lista original e chamo a função de novo sem o primeiro elemento

main :: IO ()
main = do
    a <- readLn :: IO [Int]
    print $ mytails a