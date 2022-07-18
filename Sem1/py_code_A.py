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
    
N = int(input())
v = vec2D()
max_l = -1
ans = point2D()
for i in range(N):
    v.x, v.y = map (int, input().split())
    if max_l< len_vec2D(v):
        max_l= len_vec2D(v)
        ans.x = v.x
        ans.y = v.y
print(ans.x, ans.y)
