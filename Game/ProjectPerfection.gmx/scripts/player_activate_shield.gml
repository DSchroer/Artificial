///player_activate_shield()
with(obj_player)
{
    is_shield_active = true;
    remaining_shield = 20;
    save_set_value(obj_save_data, "shield", true);
}

