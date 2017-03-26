
var time = 60 * 8;
if((current_health / max_health) > 0.05)
{
    var time = 60 * 4;
}

speed = 0;
if(sm_ticks() == 0)
{
    var ring = instance_create(x - sprite_get_xoffset(sprite_index) + (sprite_get_width(sprite_index) / 2) , y - sprite_get_yoffset(sprite_index) + (sprite_get_height(sprite_index) / 2), obj_final_ring);
    sm_set_var("health", current_health);
    sfx_play_volume(snd_heart_icreatedyou, false, 1.0);
}else if(sm_ticks() > 120)
{
    if(sm_ticks() > time)
    {
        enemy_attack(obj_player, kill);
        audio_stop_sound(snd_heart_icreatedyou);
        sfx_play_volume(snd_heart_icreatedyou_explosion, false, 1.0);
    }
}else if(sm_get_var("health") - current_health > 50)
{
    if((current_health / max_health) > 0.05)
    {
        audio_stop_sound(snd_heart_icreatedyou);
        audio_stop_sound(snd_heart_icreatedyou_explosion);
        sm_set_state(sm_state_pop());
        
        with(obj_final_ring)
        {
            instance_destroy();
        }
    }
}

if(instance_exists(obj_final_ring))
{
    obj_final_ring.image_xscale = lerp(5, 1, sm_ticks() / time);
    obj_final_ring.image_yscale = lerp(5, 1, sm_ticks() / time);
}

