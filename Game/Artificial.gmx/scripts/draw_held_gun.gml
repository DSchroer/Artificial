///draw_held_gun(gun, x, y, distance, angle, xscale, yscale)

var gun = argument0;
var xp = argument1;
var yp = argument2;
var dist = argument3;
var angle = argument4;
var xscale = argument5;
var yscale = argument6;
draw_weapon(gun, xp  + (dist * dcos(angle)), yp - (dist * dsin(angle)), xscale, yscale, angle, 1);
