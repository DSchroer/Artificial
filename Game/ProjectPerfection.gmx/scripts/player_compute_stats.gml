///player_compute_stats()

with(obj_player)
{
    var current_level = save_get_value(obj_save_data, "player_level", 1);
    var shield_health_powerup = save_get_value(obj_save_data, "shield_health_powerup", 0);
    var shield_recharge_powerup = save_get_value(obj_save_data, "shield_recharge_powerup", 0);
    var shield_delay_powerup = save_get_value(obj_save_data, "shield_delay_powerup", 0);
    
    max_health = (current_level + 1) * 100;
    shield_max_health = (current_level + 1) * 75 * (1 + shield_health_powerup * 0.1);
    shield_recharge_rate = shield_recharge_rate_base * (1 + shield_recharge_powerup * 0.1);
    shield_recharge_delay = shield_recharge_delay_base * (1 - shield_delay_powerup * 0.1);
}

