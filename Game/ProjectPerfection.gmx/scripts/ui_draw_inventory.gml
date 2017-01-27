///ui_draw_inventory()

if(!inventory_open)
{
    exit;
}

texture_set_interpolation(true);
var width = display_get_gui_width();
var height = display_get_gui_height();
var spr_width = sprite_get_width(spr_inventory_background);
var spr_height = sprite_get_height(spr_inventory_background);

// Background
var bx = (width - spr_width) / 2;
var by = (height - spr_height) / 2;
draw_sprite(spr_inventory_background, -1, bx, by);

// Weapons
if(!is_undefined(inventory[inventory_slot.weapon1])) 
{
    draw_sprite(spr_inv_rifle1, -1, bx + 73, by + 45);
}
else 
{    
    draw_text_colour(bx + 73 + 65, by + 45 + 25, "(Empty)", c_gray, c_gray, c_gray, c_gray, 1);
}

if(!is_undefined(inventory[inventory_slot.weapon2])) 
{
    draw_sprite(spr_inv_rifle1, -1, bx + 73, by + 122);
}
else 
{
    draw_text_colour(bx + 73 + 65, by + 122 + 25, "(Empty)", c_gray, c_gray, c_gray, c_gray, 1);
}

if(!is_undefined(inventory[inventory_slot.weapon3])) 
{
    draw_sprite(spr_inv_rifle1, -1, bx + 73, by + 199);
}
else 
{
    draw_text_colour(bx + 73 + 65, by + 199 + 25, "(Empty)", c_gray, c_gray, c_gray, c_gray, 1);
}

if(!is_undefined(inventory[inventory_slot.weapon4])) 
{
    draw_sprite(spr_inv_rifle1, -1, bx + 73, by + 276);
}
else 
{
    draw_text_colour(bx + 73 + 65, by + 276 + 25, "(Empty)", c_gray, c_gray, c_gray, c_gray, 1);
}

// Shield
if(!is_undefined(inventory[inventory_slot.shield])) 
{
    draw_sprite(spr_inv_shield1, -1, bx + 73, by + 354);
}
else
{
    draw_text_colour(bx + 73, by + 354 + 25, "(Empty)", c_gray, c_gray, c_gray, c_gray, 1);
}






