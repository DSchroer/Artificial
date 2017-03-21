///attack_gun(weapon, x, y, direction, ignore, play_sound, allow_sound_stacking)
var weapon = argument0;
var xpos = argument1;
var ypos = argument2;
var dir = argument3;
var ignore = argument4;
var play_sound = argument5;
var allow_sound_stacking = argument6;

return attack_gun_ext(weapon, xpos, ypos, dir, 0, ignore, false, play_sound, allow_sound_stacking);


