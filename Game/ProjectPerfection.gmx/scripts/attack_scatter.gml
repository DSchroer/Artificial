///attack_scatter(weapon, x, y, direction, ignore)
var weapon = argument0;
var xpos = argument1;
var ypos = argument2;
var dir = argument3;
var ignore = argument4;

var amt = 5;

for(var i = 0; i < amt; i++)
{
    var shot = instance_create(xpos, ypos, obj_shot_normal);
    shot.sprite_index = weapon[weapon_index.bullet_sprite];
    shot.mask_index = weapon[weapon_index.bullet_sprite];
    shot.direction = enemy_dumb(dir, 30);
    shot.speed = 20;
    shot.parent = self;
    shot.damage = round(weapon[weapon_index.damage] / amt);
}


sfx_play_volume(snd_fire_laser, true, 0.2);
