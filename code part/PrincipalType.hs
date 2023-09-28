module PrincipalType (f1, f2, f3, f4, f5, f5_inv) where
-- Do NOT modify anything above this line.
-- Do NOT import anything.

{--
Implement functions with the following types.
The functions should be total and should not contain 'undefined' or 'error'.
--}

f1 :: (a -> b, a) -> b
f1 (f1_sub, x) = f1_sub x

f2 :: a -> (b, c) -> b
f2 _ (x,y) = x

f3 :: (a -> a) -> a -> [a]
f3 f3_sub x = [f3_sub x, x]

f4 :: (b -> r) -> (a -> b) -> (a -> r)
f4 f4f f4s = f4f . f4s

f5 :: ((a, b, c) -> d) -> a -> b -> c -> d
f5 f5_sub x y z = f5_sub (x, y, z)


f5_inv ::  (a -> b -> c -> d) -> (a, b, c) -> d
f5_inv f5_sub (a,b,c) = f5_sub a b c
