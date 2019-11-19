/// @description draw the dialog
//get the last space

if (string_char_at(text[text_page], text_count) == " ") {
	last_space = text_count;
}
var text_words = scr_stringCopyWords(text[text_page], 1, text_count);
if (string_width(text_words) >= width - (margin * 2)) {
	//remove the space
	text[text_page] = string_delete(text[text_page], last_space, 1);
	
	//add a return
	text[text_page] = string_insert("\n", text[text_page], last_space); 
}

//get the visible text
text_visible = string_copy(text[text_page], 0, text_count);

//update text location
var xx = (x - camera_get_view_x(view_camera[0])) * display_scale;
var yy = (y - camera_get_view_y(view_camera[0])) * display_scale;

//draw the text
draw_text_ext(xx + margin, yy + margin, text_visible, -1, width - (margin * 2));

//add to count
text_count += spd;