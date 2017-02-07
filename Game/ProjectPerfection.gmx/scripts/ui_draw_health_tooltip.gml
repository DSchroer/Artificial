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

var colours;
colours[0] = "|health";
colours[1] = "|shield";
var scales;
scales[0] = 1;
scales[1] = 1;
var stats;
stats[0] = -1;
stats[1] = -1;
var stat_colours;
stat_colours[0] = "|white";
stat_colours[1] = "|white";


ui_draw_tooltip(xpos, ypos, lines, colours, scales, stats, stat_colours);


