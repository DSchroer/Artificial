///player_fire()
if(inventory[selected_slot] != -1 && is_array(inventory[selected_slot]))
{
    var item = inventory[selected_slot];
    var item_array = gun_hand_lookup(item[weapon_index.sprite_count + 1]);
    
    inventory[selected_slot] = attack_gun_ext(item, x + (gun_x * image_xscale), y + gun_y, point_direction(x, y - 64, mouse_x, mouse_y), item_array[4], self, true, true, true);   
}

