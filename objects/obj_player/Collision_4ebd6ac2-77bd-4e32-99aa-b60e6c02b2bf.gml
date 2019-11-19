/// @description pick up medkit
with (other) {
	instance_destroy();
}

//level up
with (obj_playerStats) {
	hp = min(hp + 5, maxhp);
}