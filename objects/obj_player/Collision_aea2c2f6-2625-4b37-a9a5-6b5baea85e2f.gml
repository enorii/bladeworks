/// @description pick up exp
with (other) {
	instance_destroy();
}

//level up
with (obj_playerStats) {
	expr += 1;
	if (expr >= maxexp) { //change this up depending how leveling up works
		level += 1;
		expr = expr - maxexp;
		maxexp += 2;
		hp += 2;
		maxhp += 2;
		stamina += 2;
		maxstamina += 2;
		attack += 1;
	}
}