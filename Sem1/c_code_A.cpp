#include <iostream>
#include <cmath>

using namespace std;

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

int main(){
	int n;
	vec2D v;
	point2D ans;
	double max_l = -1;
	cin>> n;
	for (int i=0; i < n; i++ ){
		cin>>v.x>>v.y;
		if (max_l < len_vec2D(v)){
			max_l = len_vec2D(v);
			ans.x = v.x;
			ans.y = v.y;
		}
	}
	cout<<ans.x<<' '<<ans.y<<endl;
	return 0;
}




