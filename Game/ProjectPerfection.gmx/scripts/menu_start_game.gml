///menu_start_game(play_tutorial)

var play_tutorial = argument0;

if(play_tutorial)
{
    save_clear();
    save_set_value(obj_save_data, "difficulty", difficulty_setting);
    room_goto(rm_base);
}
else
{
    save_clear();
    save_set_value(obj_save_data, "difficulty", difficulty_setting);
    save_set_value(obj_save_data, "inv0", inventory_get_tutorial_weapon());
    save_set_value(obj_save_data, "inv1", inventory_get_tutorial_weapon2());
    save_set_value(obj_save_data, "shield", true);
    save_set_value(obj_save_data, "tutorial", 9001);
    save_flush(obj_save_data);
    room_goto(rm_base);
}
