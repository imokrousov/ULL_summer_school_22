from math import *

class point2D :
    def __init__ (self):
        self.x =0
        self.y =0
        
class vec2D :
    def __init__ (self):
        self.x =0
        self.y =0
        
class line2D :
    def __init__ (self):
        self.A =0
        self.B =0
        self.C =0

    
def make_vec2D(A,B):
    res = vec2D()
    res.x = B.x - A.x
    res.y = B.y - A.y
    return res
    
def len_vec2D (v):
    return (v.x ** 2 + v.y **2) ** 0.5

def scal_product (a,b):
    return a.x*b.x + a.y*b.y

def vec_angle(a,b):
    return acos( scal_product(a,b) / (len_vec2D(a)* len_vec2D(b)))

def line_angle (l1,l2):
    n1 = vec2D()
    n2 = vec2D()
    n1.x = l1.A
    n1.y = l1.B
    n2.x = l2.A
    n2.y = l2.B
    alpha = vec_angle(n1,n2)
    if alpha < 1.570796 : return alpha
    else : return alpha - 1.570796







