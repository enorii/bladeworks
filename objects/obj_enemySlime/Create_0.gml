/// @description initialize slime
event_inherited();
spd = 1.5;
image_speed = .1;
state = scr_enemyIdleState;
alarm[0] = room_speed * irandom_range(2, 5);
sight = 64;
targetx = 0;
targety = 0;