
fiboTco :: Int -> Int
fiboTco n = go n 1 0
    where 
        go 0 _fnm1 fnm2 = fnm2
        go i fnm1 fnm2 = go (i-1) (fnm1+fnm2) fnm1

main :: IO ()
main = do
    mapM_ (print . fiboTco) [0..10]

