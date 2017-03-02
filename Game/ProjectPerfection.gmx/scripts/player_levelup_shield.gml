///player_levelup_shield(shield_powerup_type)

var shield_powerup_type = argument0;

enum shield_powerup
{
    max_health = 0,
    recharge_rate = 1,
    recharge_delay = 2
};

switch(shield_powerup_type)
{
    case shield_powerup.max_health:
        var val = save_get_value(obj_save_data, "shield_health_powerup", 0);
        save_set_value(obj_save_data, "shield_health_powerup", val + 1);
        break;
    case shield_powerup.recharge_rate:
        var val = save_get_value(obj_save_data, "shield_recharge_powerup", 0);
        save_set_value(obj_save_data, "shield_recharge_powerup", val + 1);
        break;
    case shield_powerup.recharge_delay:
        var val = save_get_value(obj_save_data, "shield_delay_powerup", 0);
        save_set_value(obj_save_data, "shield_delay_powerup", val + 1);
        break;
}

player_compute_stats();
