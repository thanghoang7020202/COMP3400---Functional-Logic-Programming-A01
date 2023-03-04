f3_2 :: a -> a
f3_2 a = a

f3 :: (a -> a) -> a -> [a]
f3 (f3_2) a = [a] 
