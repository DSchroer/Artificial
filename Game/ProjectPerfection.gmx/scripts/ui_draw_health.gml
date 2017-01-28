///ui_draw_health()

var width = display_get_gui_width();
var height = display_get_gui_height();

var rad = 75;
var rx = width - rad - 20;
var ry = height - rad - 20;

// Recharge bar, if applicable.
if(shield_penalty_time > 0)
{
    var penalty_percent = 1 - (shield_penalty_time / previous_shield_penalty_time);
    ui_draw_ring(rx, ry, rad, 14, 36, 36, 90, penalty_percent * 360, 1, make_color_rgb(150, 24, 45));
}

// Background for health/shield
ui_draw_ring(rx, ry, rad, 10, 36, 36, 0, 360, -1, make_color_rgb(20, 20, 20));

// Health
var percent_health = health / max_health;
percent_health = max(0, percent_health);
ui_draw_ring(rx, ry, rad, 10, 36, 36, 90, 180 * percent_health, 1, make_color_rgb(69, 166, 87));

// Shield
var equipped_shield = player_get_shield();
if(equipped_shield != -1)
{
    var shield_percent = remaining_shield / 100;//equipped_shield.max_shield_health;
    shield_percent = max(0, shield_percent);    
    ui_draw_ring(rx, ry, rad, 10, 36, 36, 90 + 180 * percent_health, 180 * shield_percent, 1, c_aqua);
}









