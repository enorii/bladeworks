///scr_moveState
scr_getInput();

if (dash_key) {
	var xdir = lengthdir_x(8, face * 90);
	var ydir = lengthdir_y(8, face * 90);
	var speaker = instance_place(x + xdir, y + ydir, obj_speaker);
	if (speaker != noone) { //talk to it
				with (speaker) {
			if (!instance_exists(dialog)) {
				dialog = instance_create_depth(x + xoffset, y + yoffset, 10, obj_dialog);
				dialog.text = text;
			}
			else {
				dialog.text_page++
				dialog.text_count = 0;
				if (dialog.text_page > array_length_1d(dialog.text) - 1) {
					with (dialog) {
						instance_destroy();
			}
		}
	}
}
	}
	else if (obj_playerStats.stamina >= 5) { //dash instead
		state = scr_dashState;
		alarm[0] = room_speed / 6;
		obj_playerStats.stamina -= 5; 
		obj_playerStats.alarm[0] = room_speed;
	}
}

if (attack_key) {
	image_index = 0;
	state = scr_attackState;
}

//get direction
dir = point_direction(0, 0, xaxis, yaxis);

//get length
if (xaxis == 0 && yaxis == 0) {
	len = 0;
}
else {
	len = spd;
	scr_getFace();
}

//get speed
hspd = lengthdir_x(len, dir);
vspd = lengthdir_y(len, dir);

//move
phy_position_x += hspd;
phy_position_y += vspd;

//control sprite
//image_speed = sign(len) * .2;
image_speed = .2;
if (len == 0) image_index = 0;

//control direction
switch (face) {
	case RIGHT:
		sprite_index = spr_playerwalkright;
		break;
		
	case UP:
		sprite_index = spr_playerwalkup;
		break;
		
	case DOWN:
		sprite_index = spr_playerwalkdown;
		break;
		
	case LEFT:
		sprite_index = spr_playerwalkleft;
		break;
}