///ui_draw_health_tooltip(x, y)

var xpos = argument0;
var ypos = argument1;

var lines;
lines[0] = "Health: " + string(current_health) + "/" + string(max_health);
if(is_shield_active)
{
    lines[1] = "Shield: " + string(floor(remaining_shield)) + "/" + string(shield_max_health);
}
else
{
    lines[1] = "Shield Deactivated";
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


