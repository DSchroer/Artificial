///ui_draw_textbox(text, portrait)

var text = argument0;
var portrait = argument1;

var xp = (display_get_gui_width() - 512 * 1.2) / 2;
var yp = (display_get_gui_height() - 128 * 1.25 - 150);


ui_draw_textbox_pos(xp, yp, text, portrait);
