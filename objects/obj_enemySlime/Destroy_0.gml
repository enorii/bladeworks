/// @description drop exp
instance_create_depth(x + random_range(-6, 6), y + random_range(-6, 6), 0, obj_exp);

//drop hp
if (scr_chance(.5)) {
	instance_create_depth(x + random_range(-6, 6), y + random_range(-6, 6), 0, obj_medkit);
}