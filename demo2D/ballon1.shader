shader_type canvas_item;

void vertex() {
	if (UV.x>=0.0 && UV.x<=1.0 && UV.y>=0.0 && UV.y<=1.0) {
		vec2 uv = mod(UV,0.2)*5.0;
		float displacement = abs(cos(TIME*8.0) * (VERTEX.x/16.0));
		vec2 nor = normalize(VERTEX);//normalize(vec2(0.5,0.5) - uv);
		VERTEX += nor * displacement - vec2(displacement,displacement);
	}
}

void fragment() {
	//COLOR = vec4(UV.x, UV.y, 0.0, 1.0);
	vec2 nor = normalize(vec2(0.5,0.5) - UV);
	COLOR = vec4(nor.x, nor.y, 0.0, 1.0);
}