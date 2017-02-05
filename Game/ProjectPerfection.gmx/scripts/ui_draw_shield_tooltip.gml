///ui_draw_shield_tooltip(x, y, shield)

var xpos = argument0;
var ypos = argument1;
var shield = argument2;

var c = 0;
var lines;
lines[c++] = string(shield[shield_index.name]);
lines[c++] = string(shield[shield_index.max_health]) + " Absorption";
lines[c++] = string(shield[shield_index.recharge_rate]) + " Recharge Rate";
lines[c++] = string(shield[shield_index.recharge_delay]) + " Recharge Delay";

var args;
args[0] = "|aqua";
args[1] = "|white";
args[2] = 0;
args[3] = 0;


ui_draw_tooltip(xpos, ypos, lines, args);




