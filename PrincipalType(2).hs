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
f2 _ y = fst y

f3 :: (a -> a) -> a -> [a]
f3 f3_sub x = [x]

f4 :: (b -> r) -> (a -> b) -> (a -> r)
f4 f4f f4s = f4f . f4s

f5 :: ((a, b, c) -> d) -> a -> b -> c -> d
f5 f5_sub x y z = f5_sub (x, y, z)

fstElement :: (a ,b, c) -> a
fstElement (a, _, _) = a

sndElement :: (a, b, c) -> b
sndElement (_, b, _) = b

trdElement :: (a, b, c) -> c
trdElement (_, _, c) = c

f5_inv ::  (a -> b -> c -> d) -> (a, b, c) -> d
f5_inv f5_sub x = f5_sub (fstElement x) (sndElement x) (trdElement x) 
