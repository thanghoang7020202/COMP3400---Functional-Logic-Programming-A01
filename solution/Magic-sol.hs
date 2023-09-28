module Magic (magic, factorials, listTails, cumulative) where

magic :: (b -> a -> b) -> b -> [a] -> [b]
magic _ b [] = [b]
magic f b (a:as) = b : magic f (f b a) as

factorials :: [Int]
factorials = magic (*) 1 [1..]

listTails :: [a] -> [[a]]
listTails xs = magic (\x _ -> tail x) xs xs

cumulative :: [Int] -> [Int]
cumulative = magic (+) 0