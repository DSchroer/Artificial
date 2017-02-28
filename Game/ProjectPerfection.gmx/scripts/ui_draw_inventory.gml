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
    // Weapons
    bx += 6;

    // Selected slot
    var selected = inventory[selected_slot];
        
    ui_draw_weapon_slot(bx + sprite_get_xoffset(selected[weapon_index.sprite_count + 1]), by + 254 + sprite_get_yoffset(selected[weapon_index.sprite_count + 1]), 1, selected, 65, 25);
   
    // Other slots
    var other_slot_index = 0;
    if(selected_slot == 0)
    {
        other_slot_index = 1;
    }
    var other_slot = inventory[other_slot_index];
    var other_item_scale = 0.75;
    ui_draw_weapon_slot(bx + sprite_get_xoffset(other_slot[weapon_index.sprite_count + 1]) * other_item_scale, by + 202 + sprite_get_yoffset(other_slot[weapon_index.sprite_count + 1]) * other_item_scale, other_item_scale, other_slot, 35, 15);
    ui_check_weapon_slot_tooltip(bx, by + 202, other_item_scale, other_slot);  
    ui_check_weapon_slot_tooltip(bx, by + 254, 1, selected);
}



   
   
