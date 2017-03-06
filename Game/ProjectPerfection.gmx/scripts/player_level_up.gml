///player_level_up()


var current_level = save_get_value(obj_save_data, "player_level", 1);
save_set_value(obj_save_data, "player_level", ++current_level);

player_compute_stats();


