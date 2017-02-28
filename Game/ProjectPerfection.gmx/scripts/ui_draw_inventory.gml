///ui_draw_inventory()

texture_set_interpolation(true);
var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);
var width = display_get_gui_width();
var height = display_get_gui_height();
var back_width = sprite_get_width(spr_inventory_background);
var back_height = sprite_get_height(spr_inventory_background);

// Background
var bx = 0;
var by = (height - back_height - 10);
if(!hide_inventory)
{
    draw_sprite(spr_inventory_background, -1, bx, by);
}

// Weapons
// Do some math on the exact slot because we have to account for 
// the selected_slot always being at the bottom.


if(!hide_inventory)
{
    // Selected slot
    ui_draw_weapon_slot(bx, by + 254, 1, inventory[selected_slot], 65, 25);
    if(is_array(inventory[selected_slot]))
    {
        var gun = inventory[selected_slot];
        if(gun[weapon_index.reload_cooldown] < 1)
        {
            draw_text_color(bx + 150, by + 290, string(gun[weapon_index.remaining]), c_white, c_white, c_white, c_white, 1);
        }
        else
        {
            draw_text_color(bx + 150, by + 290, "R", c_red, c_red, c_red, c_red, 1);
        }
    }
    
    // Other slots
    var other_slot = 0;
    if(selected_slot == 0)
    {
        other_slot = 1;
    }
    ui_draw_weapon_slot(bx, by + 205, 0.75, inventory[other_slot], 35, 15);
    ui_check_weapon_slot_tooltip(bx, by + 205, 0.75, inventory[other_slot]);   
}
ui_check_weapon_slot_tooltip(bx, by + 254, 1, inventory[selected_slot]);

// Textbox
if(ds_queue_size(obj_player.textbox_queue) > 0)
{
    var text = ds_queue_head(obj_player.textbox_queue);
    ui_draw_textbox(text);    
}
   
ui_draw_boss_health();

   
