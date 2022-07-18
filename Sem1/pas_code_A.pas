type point2D = record
	x : integer;
	y : integer;
end;

type vec2D = record
	x : integer;
	y : integer;
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

var 
	N,i : integer;
	v : vec2D;
	ans : point2D;
	max_l : real;
begin
	readln (N);
	max_l := -1.0;
	for i:= 1 to N do
	begin
		readln(v.x,v.y);
		if (max_l < len_vec2D(v)) then 
		begin
			max_l := len_vec2D(v);
			ans.x := v.x;
			ans.y := v.y;
		end;
	end;
	writeln (ans.x, ' ', ans.y);
end.
