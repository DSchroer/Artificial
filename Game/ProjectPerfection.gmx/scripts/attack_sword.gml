///attack_sword(weapon, x, y, direction, ignore)
var weapon = argument0;
var xpos = argument1;
var ypos = argument2;
var dir = argument3;
var ignore = argument4;

var shot = instance_create(xpos, ypos, obj_hit_sword);
shot.sprite_index = weapon[weapon_index.bullet_sprite];
shot.mask_index = weapon[weapon_index.bullet_sprite];
shot.image_angle = dir;
shot.direction = dir;
shot.image_xscale = 2;
shot.image_yscale = 2;

shot.parent = self;
shot.damage = weapon[weapon_index.damage];
