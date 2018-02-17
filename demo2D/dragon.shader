shader_type canvas_item;

void vertex() {
	vec2 uv = mod(UV,0.1) * 10.0;
	if (UV.x>=0.0 && UV.x<=1.0 && UV.y>=0.0 && UV.y<=1.0) {
		vec2 off = vec2(cos(uv.x+TIME*8.0),sin(uv.y+TIME*6.0));
		vec2 nor =  (UV-vec2(0.5,0.5)) * 2.0;
		VERTEX += off*nor*12.0;
	}
}

void fragment() {
	/*if (UV.x>=0.0 && UV.x<=1.0 && UV.y>=0.0 && UV.y<=1.0) {
	vec2 uv = mod(UV,0.2) * 5.0;
	COLOR = vec4(uv.x,uv.y,0,1);
	}*/
}