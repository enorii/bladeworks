/// @description movement
depth = -y;
script_execute(state);
//check for death
if (obj_playerStats.hp <= 0) {
	instance_destroy();
}