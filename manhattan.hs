manhattan :: [Int] -> [Int] -> [Int]
manhattan xs ys =  ((abs (x - y)) | x <- xs, y <- ys])


