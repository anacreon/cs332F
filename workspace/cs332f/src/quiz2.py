'''
Created on Nov 17, 2011

@author: srice
'''
def disjunction(p1, p2): return (lambda x: p1(x) or p2(x))
       
def odd(x): return ((x % 2) == 1)

def even(x): return((x%2) ==  0)



