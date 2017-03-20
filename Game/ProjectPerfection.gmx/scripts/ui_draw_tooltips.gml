///ui_draw_tooltips()

var width = display_get_gui_width();
var height = display_get_gui_height();
var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);
var xp;
var yp;

// Health tooltip
xp = 10;
yp = (height - sprite_get_height(spr_statusback) - 60);
if(mx > xp && mx < xp + sprite_get_width(spr_statusback) && my > yp && my < yp + sprite_get_height(spr_statusback))
{
    ui_draw_health_tooltip(mx, my);
}

// Inventory
var bx = width - sprite_get_width(spr_inventory_background) - 10 + 6;
var by = height - sprite_get_height(spr_inventory_background) - 10;
if(!hide_inventory)
{
    // Selected slot
    var selected = inventory[selected_slot];     
    // Other slots
    var other_slot_index = 0;
    if(selected_slot == 0)
    {
        other_slot_index = 1;
    }
    var other_slot = inventory[other_slot_index];
    var other_item_scale = 0.75;
    if(is_array(other_slot))
    {
        ui_check_weapon_slot_tooltip(bx + 39, by + 202, other_item_scale, other_slot);  
    }
    if(is_array(selected))
    {
        ui_check_weapon_slot_tooltip(bx, by + 254, 1, selected);
    }
}

// Components

xp = bx + 125;
yp = by + 165;
if(mx > xp && mx < xp + sprite_get_width(spr_component) * 0.5 && my > yp && my < yp + sprite_get_height(spr_component) * 0.5)
{
    var lines;
    lines[0] = "Components";
    lines[1] = "Take 3 of these to the workbench";
    lines[2] = "in your ship to permanently";
    lines[3] = "upgrade your shield. ";
    
    var lines_size = array_length_1d(lines);
    var colours;
    for(var i = 0; i < lines_size; i++)
    {
        colours[i] = "|white";
    }
    colours[0] = "|orange";
    
    var scales;
    for(var i = 0; i < lines_size; i++)
    {
        scales[i] = 1;
    }
    
    var stats;
    for(var i = 0; i < lines_size; i++)
    {
        stats[i] = -1;
    }
    
    var stat_colours;
    for(var i = 0; i < lines_size; i++)
    {
    }
    stat_colours[i] = "|white";    
    
    ui_draw_tooltip(mx, my, lines, colours, scales, stats, stat_colours);
    
}

 
   
   
