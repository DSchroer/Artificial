///attack_normal(weapon, x, y, direction, ignore)
var weapon = argument0;
var xpos = argument1;
var ypos = argument2;
var dir = argument3;
var ignore = argument4;

var shot = instance_create(xpos, ypos, obj_shot_normal);
shot.sprite_index = weapon[weapon_index.bullet_sprite];
shot.mask_index = weapon[weapon_index.bullet_sprite];
shot.direction = attack_accuracy(dir, weapon[weapon_index.accuracy]);
shot.speed = 20;
shot.parent = self;
shot.damage = weapon[weapon_index.damage];

switch(weapon[weapon_index.weapon_subtype])
{
case weapon_subtype.pistol:
    sfx_play_volume(snd_pistol_regular, true, 0.2);
    break;
case weapon_subtype.auto_rifle:
    sfx_play_volume(snd_assault_regular, true, 0.2);    
    break;
case weapon_subtype.heavy_rifle:
    sfx_play_volume(snd_heavy_regular, true, 0.2);
    break;
case weapon_subtype.sniper_rifle:
    sfx_play_volume(snd_sniper_regular, true, 0.2);    
    break;
case weapon_subtype.smg:
    sfx_play_volume(snd_smg_regular, true, 0.2);
    break;
case weapon_subtype.machine_gun:
    sfx_play_volume(snd_mg_regular, true, 0.2);
    break;

}


