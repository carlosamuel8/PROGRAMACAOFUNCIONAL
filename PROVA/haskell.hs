matches xs = [p ++ q ++ r ++ s ++ t | p <- xs, q <- xs, r <- xs, s <- xs, t <- xs]

-- matches xs = [p ++ q ++ r ++ s | p <- xs, q <- xs, r <- xs, s <- xs]

-- matches xs = [p ++ q ++ r | p <- xs, q <- xs, r <- xs]


join xs
  | null xs = ""
  | otherwise = head xs ++ "," ++ join (tail xs)

main = do
  print $ join $ matches ["a", "b"]
  print $ length $ matches ["a", "b"]