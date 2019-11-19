/// @description smooth view
if (instance_exists(obj_player)) {
	x += (obj_player.x - x) * .1;
	y += (obj_player.y - y) * .1;
}