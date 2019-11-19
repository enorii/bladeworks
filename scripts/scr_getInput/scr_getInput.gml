///scr_getInput
right_key = keyboard_check(ord("D"));
up_key = keyboard_check(ord("W"));
down_key = keyboard_check(ord("S"));
left_key = keyboard_check(ord("A"));
dash_key = keyboard_check_pressed(vk_control);
attack_key = keyboard_check_pressed(vk_space);

//get axis
xaxis = (right_key - left_key);
yaxis = (down_key - up_key);

//check for gamepad input
if (gamepad_is_connected(0)) {
	gamepad_set_axis_deadzone(0, .35);
	xaxis = gamepad_axis_value(0, gp_axislh);
	yaxis = gamepad_axis_value(0, gp_axislv);
	dash_key = gamepad_button_check_pressed(0, gp_face1);
	attack_key = gamepad_button_check_pressed(0, gp_face3);
}