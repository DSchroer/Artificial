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
if(hide_inventory)
{
    draw_sprite(spr_inventory_background_hide, -1, bx, by);
}
else
{
    draw_sprite(spr_inventory_background, -1, bx, by);
}

// Weapons
// Do some math on the exact slot because we have to account for 
// the selected_slot always being at the bottom.

// Selected slot
ui_draw_weapon_slot(bx, by + 254, 1, inventory[selected_slot], 65, 25);
if(is_array(inventory[selected_slot]))
{
    var gun = inventory[selected_slot];
    draw_text(bx + 150, by + 290, string(gun[weapon_index.remaining]));
}


if(!hide_inventory)
{
    ui_draw_weapon_slot(bx, by + 106, 0.75, inventory[ui_adjust_slot(selected_slot - 3)], 35, 15);
    ui_draw_weapon_slot(bx, by + 156, 0.75, inventory[ui_adjust_slot(selected_slot - 2)], 35, 15);
    ui_draw_weapon_slot(bx, by + 205, 0.75, inventory[ui_adjust_slot(selected_slot - 1)], 35, 15);

    ui_check_weapon_slot_tooltip(bx, by + 106, 0.75, inventory[ui_adjust_slot(selected_slot - 3)]);
    ui_check_weapon_slot_tooltip(bx, by + 156, 0.75, inventory[ui_adjust_slot(selected_slot - 2)]);
    ui_check_weapon_slot_tooltip(bx, by + 205, 0.75, inventory[ui_adjust_slot(selected_slot - 1)]);
    
    // Shield
    if(is_array(inventory[inventory_slot.shield])) 
    {
        var equipped = inventory[inventory_slot.shield];
        draw_sprite(equipped[shield_index.inv_sprite], -1, bx + 6, by + 38);
        if (mx > bx + 6 && mx < bx + 6 + 64 && my > by + 6 && my < by + 38 + 64)
        {
            ui_draw_shield_tooltip(mx, my, equipped);        
        } 
    }
    else
    {
        draw_set_colour(c_aqua);
        draw_text_transformed(bx + 6, by + 38 + 25, "(Empty)", 0.9, 0.9, 0);
    }        
}
ui_check_weapon_slot_tooltip(bx, by + 254, 1, inventory[selected_slot]);

// Textbox
if(ds_queue_size(obj_player.textbox_queue) > 0)
{
    var text = ds_queue_head(obj_player.textbox_queue);
    ui_draw_textbox(text);    
}
   
   
