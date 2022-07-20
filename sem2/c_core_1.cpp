struct point2D{
	double x,y;
};

struct vec2D{
	double x,y;
};

vec2D make_vec2D (point2D A, point2D B){
	vec2D res;
	res.x = B.x- A.x;
	res.y = B.y- A.y;
	return res;
}

double len_vec2D (vec2D v){
	return sqrt (v.x*v.x + v.y*v.y);
}
