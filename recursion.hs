fattoriale:: Int -> Int
fattoriale n = 
    if n <= 1 then
        1
    else
        n * fattoriale (n-1)

-- guards

fattoriale':: Int -> Int
fattoriale' n 
 | n<=1 = 1
 | otherwise = n * fattoriale (n-1)

is_zero :: Int -> Bool
is_zero 0 = True
is_zero _ = False

-- accumulator
fattoriale'':: Int -> Int
fattoriale'' n = aux n 1
    where 
        aux n acc
            | n<=1 = acc
            | otherwise = aux (n-1)  (n*acc)
