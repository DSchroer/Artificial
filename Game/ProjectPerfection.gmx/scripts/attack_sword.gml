///attack_sword(weapon, x, y, direction, ignore)
var weapon = argument0;
var xpos = argument1;
var ypos = argument2;
var dir = argument3;
var ignore = argument4;

var shot = instance_create(xpos, ypos, obj_hit_sword);
shot.sprite_index = weapon[weapon_index.bullet_sprite];
shot.mask_index = weapon[weapon_index.bullet_sprite];
shot.image_speed = weapon[weapon_index.bullet_sprite_speed];

shot.image_angle = dir;
shot.image_xscale = weapon[weapon_index.bullet_sprite_xscale];
shot.image_yscale = weapon[weapon_index.bullet_sprite_yscale];

shot.direction = dir;
shot.speed = weapon[weapon_index.bullet_speed];
shot.image_speed = weapon[weapon_index.bullet_sprite_speed];
shot.alarm[0] = max(2, sprite_get_number(shot.sprite_index) / shot.image_speed);

shot.parent = self;
shot.damage = weapon[weapon_index.damage];
shot.depth = depth + 10;
