///ui_draw_weapon_slot(x, y, scale, item, text_offset_x, text_offset_y);

var xpos = argument0;
var ypos = argument1;
var scale = argument2;
var item = argument3;
var text_offset_x = argument4;
var text_offset_y = argument5;

if(is_array(item)) 
{
    draw_weapon(item, xpos, ypos, scale, scale, 0, 1);
}
else 
{
    draw_text_colour(xpos + text_offset_x, ypos + text_offset_y, "(Empty)", c_white, c_white, c_white, c_white, 1);
}
