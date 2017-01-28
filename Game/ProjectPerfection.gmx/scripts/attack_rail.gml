///attack_rail(weapon, x, y, direction, ignore)
var weapon = argument0;
var xpos = argument1;
var ypos = argument2;
var dir = argument3;
var ignore = argument4;

var shot = instance_create(xpos, ypos, obj_rail);
shot.direction = dir;
shot.parent = self;
