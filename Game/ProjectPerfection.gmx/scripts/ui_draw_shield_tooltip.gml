///ui_draw_shield_tooltip(x, y, shield)

var xpos = argument0;
var ypos = argument1;
var shield = argument2;

var quality_colour = ui_get_quality_colour(shield[shield_index.quality]);

var c = 0;
var lines;
var colours;
var scales;
var stats;
var stat_colours;

lines[c] = string(shield[shield_index.name]);
colours[c] = quality_colour;
scales[c] = 1.25;
stats[c] = -1;
c++;

lines[c] = ui_get_quality_string(shield[shield_index.quality]) + " Shield";
colours[c] = quality_colour;
scales[c] = 1;
stats[c] = -1;
c++;

lines[c] = " Absorption";
colours[c] = "|tooltip";
scales[c] = 1;
stats[c] = string(shield[shield_index.max_health]);
stat_colours[c] = "|white";
c++;

lines[c] = " Recharge Rate";
colours[c] = "|tooltip";
scales[c] = 1;
stats[c] = string(shield[shield_index.recharge_rate]);
stat_colours[c] = "|white";
c++;

lines[c] = " Recharge Delay";
colours[c] = "|tooltip";
scales[c] = 1;
stats[c] = string(shield[shield_index.recharge_delay]);
stat_colours[c] = "|white";
c++;

ui_draw_tooltip(xpos, ypos, lines, colours, scales, stats, stat_colours);




