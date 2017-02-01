///player_fire()
if(inventory[selected_slot] != -1 && is_array(inventory[selected_slot]))
{
    var item = inventory[selected_slot];
    attack_gun(item, x, y - 64, point_direction(x, y - 64, mouse_x, mouse_y), self);
}

