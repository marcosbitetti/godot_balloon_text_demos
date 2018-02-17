shader_type spatial;

render_mode unshaded, depth_draw_opaque, cull_front;

void vertex() {
	VERTEX += NORMAL * 0.02;	
}

void fragment() {
	ALBEDO = vec3(0,0,0);
	ALPHA = 1.0;
}