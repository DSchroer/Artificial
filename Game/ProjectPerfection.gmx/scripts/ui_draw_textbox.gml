///ui_draw_textbox(text)

var text = argument0;

var xp = (display_get_gui_width() - 512 * 1.2) / 2;
var yp = (display_get_gui_height() - 128 * 1.25 - 75);

ui_draw_textbox_pos(xp, yp, text);
