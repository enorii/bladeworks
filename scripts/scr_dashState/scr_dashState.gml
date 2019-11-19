///scr_dashState
if (len == 0) {
	dir = face * 90; 
}
len = spd * 4;

//get speed
hspd = lengthdir_x(len, dir);
vspd = lengthdir_y(len, dir);

//move
phy_position_x += hspd;
phy_position_y += vspd;

//create dash effect
var dash = instance_create_depth(x, y, 10, obj_dashEffect);
dash.sprite_index = sprite_index;
dash.image_index = image_index;