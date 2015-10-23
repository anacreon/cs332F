module Homework3 (main) where

myCycle(x:xs) = x:xs ++ myCycle(x:xs)

euclidPythagorean = [(m^2 - n^2, 2* m * n, m^2 + n^2) | m <- [1..100], n <- [1..100], m > n, (m - n) `mod` 2 == 1, isPrime m == True, isPrime n == True] 


isPrime 1 = False
isPrime x = null[y | y <- [2..(x-1)], x `mod` y == 0]
      
           

--parentChildPythagorean

main =
      do
            putStrLn "> take 10 myCycle[1,2,3] "
            print (take 10 (myCycle[1,2,3]))

            putStrLn "> take 5  euclidPythagorean"
            print (take 5 (euclidPythagorean))



