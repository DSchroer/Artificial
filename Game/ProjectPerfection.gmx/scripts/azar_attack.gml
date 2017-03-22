
if(sprite_index != spr_azar_attack)
{
    sprite_index = spr_azar_attack;
}

if(image_index >= image_number - 1)
{
    sm_set_state("idle");
}

if(sm_ticks() == 0)
{
    var pdist = point_distance(obj_player.x, obj_player.y, x, y);
    if(pdist < 400)
    {
        if(random(2) < 1)
        {
            enemy_attack(obj_player, basic);
            sfx_play_volume(snd_azar_basic, false, 1.2);
        }else{
            enemy_attack(obj_player, slam);
            sfx_play_volume(snd_azar_slam, false, 1.2);
        }
    }else if(pdist < 900)
    {
        enemy_attack(obj_player, wave);
        sfx_play_volume(snd_azar_rock_wave, false, 1.2);
    }else{
        enemy_attack(obj_player, rock);
        sfx_play_volume(snd_azar_rock_throw, false, 1.2);
    }
}
