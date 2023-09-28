module Points (closest, npoints, manhattan) where

manhattan :: [Int] -> [Int] -> Int
manhattan [] [] = 0
manhattan (x:xs) (y:ys) = abs (x-y) + manhattan xs ys 

npoints :: [[Int]] -> [[Int]]
npoints [] = [[]]
npoints ([]:_) = []
npoints ((x:xs):xss) =  (connect x $ npoints xss) ++ (npoints $ xs:xss)

connect :: Int -> [[Int]] -> [[Int]]
connect x [] = []
connect x (ys:yss) = (x:ys):(connect x yss)

closest :: [[Int]] -> Int
closest [] = -1
closest (xs:[]) = -1
closest (xs:xss) = min' (closest' xs xss) (closest xss)
  where
    closest' :: [Int] -> [[Int]] -> Int
    closest' xs [] = maxBound::Int
    closest' xs (ys:yss) = min' (manhattan xs ys) (closest' xs yss)

    min' :: Int -> Int -> Int
    min' (-1) y = y
    min' x (-1) = x
    min' x y = min x y