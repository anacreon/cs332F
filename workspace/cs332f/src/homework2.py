
'''
Created on Sep 29, 2011

@author: srice
'''
# def quickSort(x):



def myHead(x):
    return x[0]
def myTail(x):
    return x[1:myLength(x)]
def myLast(x):
    return x[myLength(x)]
def myInit(x):
    return x[0:-1]
def myLength(x):
    if x[0:-1] == []:
        return 0        
    else:
        c = 1
        return c + myLength(x[0:-1])   
def myNull(x):
    return x[:] == []
def myReverse(x):
    y = []
    for a in x[:]:
        y = [a] + y 
    return y


def myMain():
    x = [1, 2, 3, 4, 5]
    
    print 'myHead([1,2,3,4,5])'
    print myHead(x)
    
    print 'myTail([1,2,3,4,5])'
    print myTail(x)
    
    
    