//scr_attackState
image_speed = .95;

switch (sprite_index) {
	case spr_playerwalkdown:
		sprite_index = spr_playerattackdown;
		break;
		
	case spr_playerwalkup:
		sprite_index = spr_playerattackup;
		break;
		
	case spr_playerwalkleft:
		sprite_index = spr_playerattackleft;
		break;
		
	case spr_playerwalkright:
		sprite_index = spr_playerattackright;
		break;
}

if (image_index >= 3 && attacked == false) {
	var xx = 0;
	var yy = 0;
	
	switch (sprite_index) {
	case spr_playerattackdown:
		xx = x;
		yy = y + 12;
		break;
		
	case spr_playerattackup:
		xx = x;
		yy = y - 10;
		break;
		
	case spr_playerattackleft:
		xx = x - 10;
		yy = y + 2;
		break;
		
	case spr_playerattackright:
		xx = x + 10;
		yy = y + 2;
		break;
}
	
	var damage = instance_create_depth(xx, yy, 0, obj_damage);
	damage.creator = id;
	damage.damage = obj_playerStats.attack;
	attacked = true;
}