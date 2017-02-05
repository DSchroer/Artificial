///ui_draw_health_tooltip(x, y)

var xpos = argument0;
var ypos = argument1;
var equipped_shield = player_get_shield();

var lines;
lines[0] = "Health: " + string(health) /*FIXME*/ + "/" + string(max_health);
if(is_array(equipped_shield))
{
    lines[1] = "Shield: " + string(remaining_shield) + "/" + string(equipped_shield[shield_index.max_health]);
}

var args;
args[0] = "|green";
args[1] = "|aqua";

ui_draw_tooltip(xpos, ypos, lines, args);


