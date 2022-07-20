type point2D = record
	x : integer;
	y : integer;
end;

type vec2D = record
	x : integer;
	y : integer;
end;

type line2D = record
	A : integer;
	B : integer;
    C : integer;
end;

function make_vec2D (A,B : point2D) : vec2D;
var ans: vec2D;
begin 
	ans.x := B.x - A.x;
	ans.y := B.y - A.y;
	make_vec2D := ans;
end;

function  len_vec2D(v : vec2D) : real;
begin 
	len_vec2D := sqrt(v.x*v.x + v.y*v.y);
end;


function  scal_product(a,b : vec2D) : real;
begin
    scal_product:= a.x*b.x+a.y*b.y;
end;

function  vec_angle(a,b : vec2D) : real;
var tmp : real;
begin
    tmp  := scal_product(a,b) / (len_vec2D(a)* len_vec2D(b));
    vec_angle:=arctan(sqrt(1-sqr(cos(tmp)))/cos(tmp));
end;

function  line_angle(l1,l2 : line2D) : real;
var n1,n2 : vec2D;
    alpha : real;
begin
    n1.x := l1.A;
    n1.y := l1.B;
    n2.x := l2.A;
    n2.y := l2.B;
    alpha := vec_angle(n1,n2);
    if alpha < 1.570796 then line_angle:= alpha
    else line_angle:= alpha - 1.570796;
end;

