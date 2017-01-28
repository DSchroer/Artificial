///ui_draw_inventory()

texture_set_interpolation(true);
var width = display_get_gui_width();
var height = display_get_gui_height();
var spr_width = sprite_get_width(spr_inventory_background);
var spr_height = sprite_get_height(spr_inventory_background);

// Background
var bx = 0;
var by = (height - spr_height - 50);
draw_sprite(spr_inventory_background, -1, bx, by);

// Weapons
// Do some math on the exact slot because we have to account for 
// the selected_slot always being at the bottom.
// Slot 1
var slot = selected_slot - 3;
if(slot < 0) 
{
    slot += inventory_slot.shield;
}
if(is_array(inventory[slot])) 
{
    var equipped = inventory[slot];
    draw_sprite_ext(equipped[weapon_index.inv_sprite], -1, bx + 6, by + 82, 0.75, 0.75, 0, c_white, 1);
}
else 
{    
    draw_text_colour(bx + 35, by + 82 + 15, "(Empty)", c_aqua, c_aqua, c_aqua, c_aqua, 1);
}

// Slot 2
slot = selected_slot - 2;
if(slot < 0) 
{
    slot += inventory_slot.shield;
}
if(is_array(inventory[slot])) 
{
    var equipped = inventory[slot];
    draw_sprite_ext(equipped[weapon_index.inv_sprite], -1, bx + 6, by + 140, 0.75, 0.75, 0, c_white, 1);
}
else 
{
    draw_text_colour(bx + 35, by + 140 + 15, "(Empty)", c_aqua, c_aqua, c_aqua, c_aqua, 1);
}

// Slot 3
slot = selected_slot - 1;
if(slot < 0) 
{
    slot += inventory_slot.shield;
}
if(is_array(inventory[slot])) 
{
    var equipped = inventory[slot];
    draw_sprite_ext(equipped[weapon_index.inv_sprite], -1, bx + 6, by + 197, 0.75, 0.75, 0, c_white, 1);
}
else 
{
    draw_text_colour(bx + 35, by + 197 + 15, "(Empty)", c_aqua, c_aqua, c_aqua, c_aqua, 1);
}

// Last slot (selected slot)
var slot = selected_slot;
if(is_array(inventory[selected_slot])) 
{
    var equipped = inventory[slot];
    draw_sprite(equipped[weapon_index.inv_sprite], -1, bx + 6, by + 254);
}
else 
{
    draw_text_colour(bx + 65, by + 254 + 25, "(Empty)", c_aqua, c_aqua, c_aqua, c_aqua, 1);
}

// Shield
if(is_array(inventory[inventory_slot.shield])) 
{
    var equipped = inventory[inventory_slot.shield];
    draw_sprite(equipped[shield_index.inv_sprite], -1, bx + 6, by + 6);
}
else
{
    draw_set_colour(c_aqua);
    draw_text_transformed(bx + 6, by + 6 + 25, "(Empty)", 0.9, 0.9, 0);
}




