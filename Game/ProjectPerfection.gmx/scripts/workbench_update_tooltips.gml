///workbench_update_tooltips()

var level = save_get_value(obj_save_data, "shield_health_powerup", 0);
var lines1;
var i = 0;
lines1[i++] = "Upgrade shield max health";
lines1[i++] = "Current upgrade: +" + string(10 * level) + "%";
if(level < obj_menu_workbench.max_hp_level)
{
    lines1[i++] = "Next upgrade: +" + string(10 * (1 + level)) + "%";
}
lines1[i++] = "Consumes 3 components.";
button_upgrade_health.lines = lines1;

level = save_get_value(obj_save_data, "shield_recharge_powerup", 0);
var lines2;
i = 0;
lines2[i++] = "Upgrade shield recharge rate";
lines2[i++] = "Current upgrade: +" + string(10 * level) + "%";
if(level < obj_menu_workbench.max_regen_level)
{
    lines2[i++] = "Next upgrade: +" + string(10 * (1 + level)) + "%";
}
lines2[i++] = "Consumes 3 components.";
button_upgrade_recharge.lines = lines2;

level = save_get_value(obj_save_data, "shield_delay_powerup", 0);
var lines3;
i = 0;
lines3[i++] = "Upgrade shield recharge delay";
lines3[i++] = "Current upgrade: -" + string(5 * level) + "%";
if(level < obj_menu_workbench.max_delay_level)
{
    lines3[i++] = "Next upgrade: -" + string(5 * (1 + level)) + "%";
}
lines3[i++] = "Consumes 3 components.";

button_upgrade_delay.lines = lines3;

