///attack_rail(weapon, x, y, direction, ignore)
var weapon = argument0;
var xpos = argument1;
var ypos = argument2;
var dir = argument3;
var ignore = argument4;

var shot = instance_create(xpos, ypos, obj_shot_rail);
shot.sprite_index = weapon[weapon_index.bullet_sprite];
shot.direction = dir;
shot.parent = self;
shot.damage = weapon[weapon_index.damage];

sfx_play_volume(snd_fire_laser, true, 0.3);
