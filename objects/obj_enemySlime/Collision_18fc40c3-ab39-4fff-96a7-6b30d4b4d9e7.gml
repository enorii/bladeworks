/// @description DAMAGE PLAYER
if (state != scr_enemyStallState) {
	var dir = point_direction(other.x, other.y, x, y);
	var xdir = lengthdir_x(1, dir);
	var ydir = lengthdir_y(1, dir);
	var damage = instance_create_depth(other.x + xdir, other.y + ydir, 0, obj_damage);
	damage.creator = id;
	damage.knockback = 5;
	state = scr_enemyStallState;
	alarm[1] = room_speed;
}