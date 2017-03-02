///workbench_update_tooltips()

var level = save_get_value(obj_save_data, "shield_health_powerup", 0);
var lines1;
lines1[0] = "Upgrade shield max health";
lines1[1] = "Current upgrade: +" + string(10 * level) + "%";
if(level < 4)
{
    lines1[2] = "Next upgrade: +" + string(10 * (1 + level)) + "%";
}
button_upgrade_health.lines = lines1;

level = save_get_value(obj_save_data, "shield_recharge_powerup", 0);
var lines2;
lines2[0] = "Upgrade shield recharge rate";
lines2[1] = "Current upgrade: +" + string(10 * level) + "%";
if(level < 4)
{
    lines2[2] = "Next upgrade: +" + string(10 * (1 + level)) + "%";
}
button_upgrade_recharge.lines = lines2;

level = save_get_value(obj_save_data, "shield_delay_powerup", 0);
var lines3;
lines3[0] = "Upgrade shield recharge delay";
lines3[1] = "Current upgrade: -" + string(10 * level) + "%";
if(level < 4)
{
    lines3[2] = "Next upgrade: -" + string(10 * (1 + level)) + "%";
}
button_upgrade_delay.lines = lines3;

