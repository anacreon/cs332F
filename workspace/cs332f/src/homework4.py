'''
Created on Oct 13, 2011

@author: srice
'''


def euclidPythagTrip(x):
    
    return [(k*(m**2 - n**2), k*(2*m*n), k*(m**2 + n**2)) 
               for m in xrange(1,x*2,1) 
               for n in xrange(1,x*2,1) 
               for k in xrange(1,x*2,1)
               if m > n
               if (m - n)% 2 == 1
               if (isPrime(m)and isPrime(n))
               if ((k*(m**2 - n**2) <= x) and
                   ((k*(2*m*n)) <= x)and 
                   ((k*(m**2 + n**2) <= x)))]

def parentChildBase(limit):
    return [(3,4,5)] + parentChild((3,4,5), limit)
    
def parentChild((a,b,c), limit):
    
    tripleList = []
    a1 = -a + 2*b + 2*c
    b1 = -2*a+ b + 2*c
    c1 = -2*a + 2*b + 3*c
    
    a2 = a + 2*b + 2*c
    b2 = 2*a + b + 2*c
    c2 = 2*a + 2*b + 3*c
    
    a3 = a - 2*b + 2*c
    b3 = 2*a - b + 2*c
    c3 = 2*a - 2*b + 3*c
    
    triple1 = (a1,b1,c1)
    triple2 = (a2,b2,c2)
    triple3 = (a3,b3,c3)
    
    tripleList.append(triple1)
    tripleList.append(triple2)
    tripleList.append(triple3)
    
    tripleList.sort()
    
    list1 = []
    list2 = []
    list3 = []

    
    if((a1 < limit) and (a2 < limit) and (a3 < limit)
       and (b1 < limit)and (b2 < limit) and(b3 < limit)
       and (c1 < limit) and (c2 < limit) and (c3 <limit)):
        list1 = parentChild(triple1,limit)
        list2 = parentChild(triple2,limit)
        list3 = parentChild(triple3,limit)
    
    totalList = tripleList + list1 + list2 + list3
    totalList.sort()   
    return totalList

            
    
def isPrime(x):
    y = [a for a in xrange(1,x-1,1)
         if (x % a) != 0]
    return myNull(y)
def myNull(x):
    return x[:] == []

def listOfFourSquares(x):    

    return[]
    
def myMain():
    
    print "euclidPythagTrip(30)"
    print euclidPythagTrip(30)
    
    print "parentChildBase(100)"
    print parentChildBase(100)
    
    
    
    return[]