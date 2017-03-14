///ui_check_weapon_slot_tooltip(x, y, scale, item);

var xpos = argument0;
var ypos = argument1;
var scale = argument2;
var item = argument3;

var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);
var cell_width = 156 * scale;
var cell_height = 64 * scale;

if(is_array(item)) 
{
    if (mx > xpos && mx < xpos + cell_width && my > ypos && my < ypos + cell_height)
    {
        if(old_tooltips)
        {
            ui_draw_weapon_tooltip1(mx, my, item);        
        }
        else
        {
            ui_draw_weapon_tooltip2(mx, my, item, false);        
        }
    }
}    


