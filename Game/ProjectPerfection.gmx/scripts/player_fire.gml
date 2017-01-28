///player_fire()
if(inventory[selected_slot] != -1 && is_array(inventory[selected_slot]))
{
    var item = inventory[selected_slot];
    switch(item[weapon_index.type])
    {
        case weapon_type.sword:
            attack_sword(item, x, y, point_direction(x, y, mouse_x, mouse_y), self);
            break;
        case weapon_type.gun:
            attack_gun(item, x, y - 32, point_direction(x, y - 32, mouse_x, mouse_y), self);
            break;
    }
}

