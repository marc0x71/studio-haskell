in_range :: Integer -> Integer -> Integer -> Bool
in_range min max x = x >= min && x <= max

in_range' :: Integer -> Integer -> Integer -> Bool
in_range' min max x = 
    let lower = x >=min
        upper = x <=max
    in  lower && upper

in_range'' :: Integer -> Integer -> Integer -> Bool
in_range'' min max x = lower && upper
    where   lower = x >=min
            upper = x <=max

in_range''' :: Integer -> Integer -> Integer -> Bool
in_range''' min max x = 
    if lower then upper else False
    where   lower = x >=min
            upper = x <=max

