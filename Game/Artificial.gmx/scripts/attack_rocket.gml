///attack_rocket(weapon, x, y, direction, ignore, play_sound, allow_sound_stacking)
var weapon = argument0;
var xpos = argument1;
var ypos = argument2;
var dir = argument3;
var ignore = argument4;
var play_sound = argument5;
var allow_sound_stacking = argument6;

var shot = instance_create(xpos, ypos, obj_shot_explosive);
shot.sprite_index = weapon[weapon_index.bullet_sprite];
shot.mask_index = weapon[weapon_index.bullet_sprite];

shot.image_speed = weapon[weapon_index.bullet_sprite_speed];
shot.image_xscale = weapon[weapon_index.bullet_sprite_xscale];
shot.image_yscale = weapon[weapon_index.bullet_sprite_yscale];
shot.image_alpha = weapon[weapon_index.bullet_sprite_alpha];

shot.direction = attack_accuracy(dir, weapon[weapon_index.accuracy]);
shot.speed = weapon[weapon_index.bullet_speed];
shot.parent = self;
shot.damage = weapon[weapon_index.damage];

if(!play_sound)
{
    exit;
}

switch(weapon[weapon_index.weapon_subtype])
{
case weapon_subtype.pistol:
    sfx_play_gun(snd_pistol_regular, allow_sound_stacking, 0.2);
    break;
case weapon_subtype.auto_rifle:
    sfx_play_gun(snd_assault_regular, allow_sound_stacking, 0.2);    
    break;
case weapon_subtype.heavy_rifle:
    sfx_play_gun(snd_heavy_regular, allow_sound_stacking, 0.2);
    break;
case weapon_subtype.sniper_rifle:
    sfx_play_gun(snd_sniper_regular, allow_sound_stacking, 0.2);    
    break;
case weapon_subtype.smg:
    sfx_play_gun(snd_smg_regular, allow_sound_stacking, 0.2);
    break;
case weapon_subtype.machine_gun:
    sfx_play_gun(snd_mg_regular, allow_sound_stacking, 0.2);
    break;

}


