module Homework1 (main) where
--
quickSort[] = []
quickSort (x:xs) =
           let
              ys = [a | a <- xs, a < x]			  
              zs = [b | b <- xs, b >= x] --Just had to make one of the comparisons be "greater than or equal to" or less than or equal to to make it inclue the duplicates
           in quickSort ys ++ [x] ++ quickSort zs
myHead[x]= [x]		
myHead (x:xs) = [x]
--head just grabs the first thing in the list in this case x is the first thing in the list

myTail[x] = [x]
myTail (x:xs) = xs
--tail grabs everything after the head in this case xs			  
			  
myLast[x] = [x]
myLast(x:xs) = myLast xs
--last keeps getting the tail until there is only 1 element left in the list

myInit[x] = []
myInit(x:xs) = [x] ++ myInit xs

myNull[] = True
myNull(_:_) = False
--This just checks to see if the list is empty or not.
			
myLength[] = 0
myLength(x:xs) = 1 + myLength xs

myReverse[x] = [x]
myReverse(x:xs) = myReverse xs ++ [x]

myTake(0, y:ys) = []
myTake(x, []) = []
myTake(x, y:ys) = [y] ++ myTake (x - 1, ys) 	

myDrop(0, y:ys) = y:ys
myDrop(x, []) = []
myDrop(x, y:ys) = myDrop(x - 1, ys)	

addPairs([], _:_) = []
addPairs(_:_, []) = []
addPairs([],[]) = []
addPairs(x:xs, y:ys) = 
        let
		z = x + y
		in [z] ++ addPairs(xs, ys)
		
myReplicate 0 y = []
myReplicate x y = [y] ++ myReplicate (x-1) y	

mySum[] = 0
mySum(x:xs) = x + mySum xs 

myProduct[] = 1
myProduct(x:xs) = x * myProduct xs
	
main =
	do
	putStrLn "> quickSort [1, 2, 3, 2, 1]"
	print (quickSort [1, 2, 3, 2, 1])
	
	putStrLn "> myHead [1, 2, 3, 4, 5]"
	print (myHead [1, 2, 3, 4, 5])
	
	putStrLn "> myTail [1, 2, 3, 4, 5]"
	print (myTail [1, 2, 3, 4, 5])
	
	putStrLn "> myLast [1, 2, 3, 4, 5]"
	print (myLast [1, 2, 3, 4, 5])

	putStrLn "> myInit[1, 2, 3, 4, 5]"
	print (myInit [1, 2, 3, 4, 5])
	
	putStrLn "> myNull [1, 2, 3, 4, 5]"
	print (myNull [1, 2, 3, 4, 5])
	
	putStrLn "> myLength [1, 2, 3, 4, 5]"
	print (myLength [1, 2, 3, 4, 5])
	
	putStrLn "> myReverse [1, 2, 3, 4, 5]"
	print (myReverse([1, 2, 3, 4, 5]))
	
	putStrLn "> myTake 3 [1, 2, 3, 4, 5]"
	print (myTake(3, [1, 2, 3, 4, 5]))
	
	putStrLn "> myDrop 3 [1, 2, 3, 4, 5]"
	print (myDrop(3, [1, 2, 3, 4, 5]))
	
	putStrLn "> addPairs[1, 2, 3] [4, 5, 6]"	
	print (addPairs([1, 2, 3] ,[4, 5, 6]))
	
	putStrLn "> myReplicate 4 6"	
	print (myReplicate 4 6)
	
	putStrLn "> mySum [1, 2, 3, 4, 5]"
	print (mySum([1, 2, 3, 4, 5]))
	
	putStrLn "> myProduct [1, 2, 3, 4, 5]"
	print (myProduct([1, 2, 3, 4, 5]))