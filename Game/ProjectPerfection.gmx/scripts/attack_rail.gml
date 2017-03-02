///attack_rail(weapon, x, y, direction, ignore)
var weapon = argument0;
var xpos = argument1;
var ypos = argument2;
var dir = argument3;
var ignore = argument4;

var shot = instance_create(xpos, ypos, obj_shot_rail);
shot.sprite_index = weapon[weapon_index.bullet_sprite];
shot.direction = attack_accuracy(dir, weapon[weapon_index.accuracy]);

shot.image_speed = weapon[weapon_index.bullet_sprite_speed];
shot.image_xscale = weapon[weapon_index.bullet_sprite_xscale];
shot.image_yscale = weapon[weapon_index.bullet_sprite_yscale];

shot.parent = self;
shot.damage = weapon[weapon_index.damage];

switch(weapon[weapon_index.weapon_subtype])
{
case weapon_subtype.pistol:
    sfx_play_gun(snd_pistol_laser, true, 0.2);
    break;
case weapon_subtype.auto_rifle:
    sfx_play_gun(snd_assault_laser, true, 0.2);
    break;
case weapon_subtype.heavy_rifle:
    sfx_play_gun(snd_heavy_laser, true, 0.2);
    break;
case weapon_subtype.sniper_rifle:
    sfx_play_gun(snd_sniper_laser, true, 0.2);
    break;
case weapon_subtype.smg:
    sfx_play_gun(snd_smg_laser, true, 0.2);
    break;
case weapon_subtype.machine_gun:
    sfx_play_gun(snd_mg_laser, true, 0.2);
    break;

}


