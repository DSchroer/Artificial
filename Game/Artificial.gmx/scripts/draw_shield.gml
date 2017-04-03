///draw_shield(weapon, x, y, xscale, yscale, rot, alpha)
var shield = argument0;
var xp = argument1;
var yp = argument2;
var xscale = argument3;
var yscale = argument4;
var rot = argument5;
var alpha = argument6;

var sprite = shield[shield_index.world_sprite];
draw_sprite_ext(sprite, -1, xp, yp, xscale, yscale, rot, c_white, alpha);

