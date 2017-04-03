///player_heal_percent(percent)
var percent = argument0;

with(obj_player)
{
    current_health += max_health * (percent / 100);
    current_health = min(current_health, max_health);
}

